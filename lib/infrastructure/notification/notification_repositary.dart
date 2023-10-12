import 'dart:convert';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/users/model/user.dart';

class NotificationRepositary {
  // Send a push notification message
  Future<void> sendPushMessage(
      {String? body, String? title, required String fcmToken}) async {
    try {
      log(fcmToken.toString());
      await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'content-type': 'application/json',
            'Authorization':
                'key=AAAAbRMQwbU:APA91bG7QMnimjaA23XWU-Qvaq5J4ZmeZdWKTsNOVDM98_2n9YkxMxYx6jkpGcS8so-5gA0xZJkc6Cu9DbFwWYTmIQXwMcB6rCAN4GDG3X8snMA2u1J3PLHaNcyg-JIRMJrqN641lhPb'
          },
          body: jsonEncode(
            <String, dynamic>{
              'priority': 'high',
              'data': <String, dynamic>{
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'status': 'done',
                'body': body,
                'title': title,
              },
              'notification': <String, dynamic>{
                'title': title,
                'body': body,
                'android_channel_id': 'shop_mate',
              },
              "to": fcmToken,
            },
          ));
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
        print(e.toString());
      }
    }
  }

  Future<void> sendNotificationToAdmin({
    required String title,
    required String message,
  }) async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    final docs = await db
        .collection(Collection.collectionUser)
        .where('isAdmin', isEqualTo: true)
        .get();
    for (var snapshot in docs.docs) {
      final data = snapshot.data();
      sendPushMessage(
        title: title,
        body: message,
        fcmToken: data['fcmToken'],
      );
    }
  }
}
