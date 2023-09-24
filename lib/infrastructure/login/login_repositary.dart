import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/core/role_based_login/lole_based_login.dart';
import 'package:shop_mate/domain/login/i_login_facade.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@LazySingleton(as: ILoginFacade)
class LoginRepositary implements ILoginFacade {
  @override
  Future<Either<MainFailure, User>> loginMethod(
      email, password, context) async {
    try {
      // Initialize Firebase Authentication
      final FirebaseAuth auth = FirebaseAuth.instance;

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
        snackBar(context: context, msg: e.code);
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
