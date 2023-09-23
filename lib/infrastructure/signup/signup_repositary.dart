import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/signup/i_signup_facade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@LazySingleton(as: ISignupFacade)
class SignupRepository implements ISignupFacade {
  @override
  Future<Either<MainFailure, User>> signupMethod(user, context) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? currentUser;

    final db = FirebaseFirestore.instance;
    try {
      // Create user data to be stored in Firestore
      final Map<String, dynamic> userData = {
        'email': user.email,
        'username': user.username,
        'password': user.password,
        'isAdmin': true,
      };

      // Create a user using Firebase Auth
      await auth
          .createUserWithEmailAndPassword(
              email: user.email!, password: user.password!)
          .then((value) async {
        // Store user data in Firestore
        await db
            .collection(Collection.collectionUser)
            .doc(value.user?.uid)
            .set(userData);

        if (value.user != null) {
          currentUser = value.user!;

          // Send email verification
          await value.user!.sendEmailVerification();

          // Display a snackbar message
          snackBar(
            context: context,
            msg:
                "An email has been sent to your registered email. To activate it please check your email box",
          );
        }
      });

      // Navigate to the login screen
      Navigator.of(context).pushNamed("login");

      // Return the user as a Right value
      return Right(currentUser!);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuth exceptions and display appropriate snackbar messages
      if (e.code == "invalid-email") {
        snackBar(context: context, msg: "Your email is not valid");
      } else if (e.code == "operation-not-allowed") {
        snackBar(context: context, msg: "Your account has been disabled");
      } else if (e.code == "weak-password") {
        snackBar(context: context, msg: "Weak password");
      } else if (e.code == "email-already-in-use") {
        snackBar(context: context, msg: "Email already in use");
      } else {
        snackBar(context: context, msg: "Something went wrong");
      }

      // Return a Left value indicating the failure
      return const Left(MainFailure.clientFailure());
    }
  }
}
