import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/users/i_profile_facade.dart';
import 'package:shop_mate/domain/users/model/user.dart';

@LazySingleton(as: IAuthFacade)
class UsersRepositary implements IAuthFacade {
  @override
  Future<Either<MainFailure, List<UserModel>>> getUsers(
      {required bool getAllUsers}) async {
    try {
      final db = FirebaseFirestore.instance;

      if (getAllUsers != true) {
        final querySnapshot = await db
            .collection(Collection.collectionUser)
            .orderBy('date', descending: true)
            .limit(5)
            .get();

        // Create a list to hold the UserModel objects
        final List<UserModel> users = [];

        // Loop through the documents and convert them to UserModel objects
        for (final docSnapshot in querySnapshot.docs) {
          final user = UserModel.fromJson(docSnapshot.data());
          users.add(user);
        }

        // Return the list of UserModel objects
        return Right(users);
      } else {
        final querySnapshot = await db
            .collection(Collection.collectionUser)
            .orderBy('date', descending: true)
            .get();

        // Create a list to hold the UserModel objects
        final List<UserModel> users = [];

        // Loop through the documents and convert them to UserModel objects
        for (final docSnapshot in querySnapshot.docs) {
          final user = UserModel.fromJson(docSnapshot.data());
          users.add(user);
        }

        // Return the list of UserModel objects
        return Right(users);
      }
    } catch (e) {
      // Handle any errors that occur during the fetch
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, UserModel>> getCurrentUser() async {
    try {
      String userId = FirebaseAuth.instance.currentUser!.uid;
      final db = FirebaseFirestore.instance;
      final docRef =
          await db.collection(Collection.collectionUser).doc(userId).get();
      final model = UserModel.fromJson(docRef.data()!);
      return Right(model);
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
