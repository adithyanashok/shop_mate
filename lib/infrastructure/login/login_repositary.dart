import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/core/role_based_login/role_based_login.dart';
import 'package:shop_mate/domain/login/i_login_facade.dart';
import 'package:shop_mate/domain/notifications/notifications.dart';
import 'package:shop_mate/presentation/admin/main_screen.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:flutter/material.dart';

@LazySingleton(as: ILoginFacade)
class LoginRepositary implements ILoginFacade {
  @override
  Future<Either<MainFailure, User>> loginMethod(
      email, password, context) async {
    try {
      FirebaseNotificationService firebaseNotificationService =
          FirebaseNotificationService();
      // Initialize Firebase Authentication
      final FirebaseAuth auth = FirebaseAuth.instance;
      final FirebaseFirestore db = FirebaseFirestore.instance;
      // Attempt to sign in with the provided email and password
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Retrieve the signed-in user from the credential
      final User? user = credential.user;

      // Check if the user is null (not found)
      if (user == null) {
        // Show a snackbar indicating that the user was not found
        snackBar(context: context, msg: "User not found");
      }

      // Check if the user's email is not verified
      if (!user!.emailVerified) {
        // Show a snackbar indicating that the user needs to verify their email
        snackBar(context: context, msg: "You need to verify your email");
      }
      final fcmToken = await firebaseNotificationService.getDeviceToken();
      await db.collection(Collection.collectionUser).doc(user.uid).update({
        'fcmToken': fcmToken,
      });
      BlocProvider.of<UserBloc>(context).add(const UserEvent.getUser());

      // Navigate to the MainPage on successful login
      route(context);

      // Return a Right with the signed-in user as the result of the login
      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        snackBar(context: context, msg: "Invalid email");
      } else if (e.code == 'user-not-found') {
        snackBar(context: context, msg: 'User not found');
      } else if (e.code == 'wrong-password') {
        snackBar(context: context, msg: 'Wrong password');
      } else {
        snackBar(context: context, msg: "Wrong email or password!");
      }
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, User>> signinWithGoogle(context) async {
    try {
      final db = FirebaseFirestore.instance;
      final FirebaseAuth _auth = FirebaseAuth.instance;
      FirebaseNotificationService firebaseNotificationService =
          FirebaseNotificationService();
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      snackBar(context: context, msg: googleUser.toString());
      snackBar(context: context, msg: googleAuth.toString());
      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        snackBar(context: context, msg: credential.toString());

        UserCredential userCredential =
            await _auth.signInWithCredential(credential);
        snackBar(context: context, msg: userCredential.toString());

        final fcmToken = await firebaseNotificationService.getDeviceToken();
        await db
            .collection(Collection.collectionUser)
            .doc(userCredential.user?.uid)
            .update({
          'fcmToken': fcmToken,
        });
        final User? user = userCredential.user;
        snackBar(context: context, msg: user.toString());

        if (user != null) {
          snackBar(context: context, msg: "Navigation started");

          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) {
              return const MainPage();
            },
          ), (route) => false);
          snackBar(context: context, msg: "Navigation ended");
        }
        return Right(user!);
      } else {
        return const Left(MainFailure.clientFailure());
      }
    } on FirebaseAuthException catch (e) {
      snackBar(context: context, msg: "Something went wrong...");
      return const Left(MainFailure.clientFailure());
    }
  }
}
