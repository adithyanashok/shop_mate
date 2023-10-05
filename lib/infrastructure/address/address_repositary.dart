// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/address/i_address_facade.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@Injectable(as: IAddressFacade)
class AddressRepositary implements IAddressFacade {
  @override
  Future<Either<MainFailure, AddressModel>> addAddress(
      AddressModel addressModel, BuildContext context) async {
    try {
      final db = FirebaseFirestore.instance;

      // Convert the AddressModel object to JSON
      final addressJson = addressModel.toJson();

      // Add the JSON data to the Firestore collection and get a reference to the document
      final docRef =
          await db.collection(Collection.collectionAddress).add(addressJson);

      // Get the data from the Firestore document
      final data = await docRef.get();

      // Extract the address data from the Firestore document and create an AddressModel object
      final address = data.data();
      final model = AddressModel.fromJson(address!);

      // Close the current screen or dialog
      Navigator.of(context).pop();

      // Return the created AddressModel object wrapped in a Right Either
      return Right(model);
    } catch (e) {
      // If an error occurs, display a snackbar with the error message
      snackBar(context: context, msg: e.toString());

      // Return a Left Either indicating a client failure
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<AddressModel>>> getAddress(
      String userId, BuildContext context) async {
    try {
      final db = FirebaseFirestore.instance;

      // Initialize an empty list to store AddressModel objects
      List<AddressModel> addressList = [];

      // Retrieve a query snapshot of all documents in the collection
      final querySnapshot =
          await db.collection(Collection.collectionAddress).get();

      // Iterate through each document in the query snapshot
      for (var docSnapshot in querySnapshot.docs) {
        // Convert the document data to an AddressModel object
        final address = AddressModel.fromJson(docSnapshot.data());

        // Add the AddressModel object to the list
        addressList.add(address);
      }

      // Return the list of AddressModel objects wrapped in a Right Either
      return Right(addressList);
    } catch (e) {
      // If an error occurs, display a snackbar with the error message
      snackBar(context: context, msg: e.toString());

      // Return a Left Either indicating a client failure
      return const Left(MainFailure.clientFailure());
    }
  }
}
