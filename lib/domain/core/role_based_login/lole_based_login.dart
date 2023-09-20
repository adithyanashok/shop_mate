import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/presentation/admin/main_screen.dart';
import 'package:shop_mate/presentation/main_page.dart';

void route(context) {
  User? user = FirebaseAuth.instance.currentUser;
  var userData = FirebaseFirestore.instance
      .collection(Collection.collectionUser)
      .doc(user!.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      if (documentSnapshot.get('isAdmin') == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ),
        );
      }
    } else {
      print('Document does not exist on the database');
    }
  });
}
