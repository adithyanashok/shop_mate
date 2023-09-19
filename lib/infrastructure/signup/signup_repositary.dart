import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/signup/i_signup_facade.dart';
import 'package:shop_mate/domain/users/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: ISignupFacade)
class SignupRepositary implements ISignupFacade {
  @override
  Future<Either<MainFailure, UserModel>> signupMethod(user) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final db = FirebaseFirestore.instance;
    try {
      Map<String, dynamic> userData = {
        'email': user.email,
        'username': user.username,
        'password': user.password,
        'isAdmin': user.isAdmin,
      };
      final data = await _auth
          .createUserWithEmailAndPassword(
              email: user.email!, password: user.password!)
          .then((value) {
        db.collection('users').doc(value.user?.uid).set(userData);
      });

      return Right(data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        SnackBar(content: Text('${e.message}'));
      }
      return const Left(MainFailure.clientFailure());
    }
  }
}
