import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/presentation/admin/main_screen.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/onboard/onboard.dart';

void route(context) {
  User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance
      .collection(Collection.collectionUser)
      .doc(user?.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      if (documentSnapshot.get('isAdmin') == true) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
          (route) => false,
        );
      } else if (documentSnapshot.get('isAdmin') == false) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ),
          (route) => false,
        );
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
          (route) => false,
        );
      }
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
        (route) => false,
      );
    }
  });
}
