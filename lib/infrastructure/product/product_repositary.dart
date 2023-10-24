// import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/product/i_product_facade.dart';
import 'package:shop_mate/domain/product/model/product.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@LazySingleton(as: IProductFacade)
class ProductRepository implements IProductFacade {
  @override
  Future<Either<MainFailure, ProductModel>> addProduct(
      ProductModel product, List<Media> selectedImages, context) async {
    try {
      final db = FirebaseFirestore.instance;
      List<String> images =
          await uploadImagesToFirebaseStorage(selectedImages, context);
      product = product.copyWith(image: images);
      final productMap = product.toJson();

      final docRef =
          await db.collection(Collection.collectionProduct).add(productMap);

      final snapshot = await docRef.get();
      final productData = snapshot.data() as Map<String, dynamic>;

      final productModel = ProductModel.fromJson(productData);
      Navigator.of(context).pop();
      return Right(productModel);
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> editProduct(
      ProductModel product, List<Media>? selectedImages, context) async {
    try {
      final db = FirebaseFirestore.instance;
      if (selectedImages != null) {
        List<String> images =
            await uploadImagesToFirebaseStorage(selectedImages, context);
        product = product.copyWith(image: images);
        db.collection(Collection.collectionProduct).doc(product.id).update(
          {
            "image": product.image,
          },
        );
      } else {}

      db.collection(Collection.collectionProduct).doc(product.id).update(
        {
          "name": product.name,
          "description": product.description,
          "amount": product.amount,
          "quantity": product.quantity,
          "category": product.category,
        },
      );

      Navigator.of(context).pop();
      return const Right(true);
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> deleteProduct(
      String productId, context) async {
    try {
      final db = FirebaseFirestore.instance;
      await db.collection(Collection.collectionProduct).doc(productId).delete();
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.getAllProduct(fetchType: 'all-products'));
      Navigator.of(context).pop();
      return const Right(true);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getAllProducts(
      String fetchType) async {
    try {
      final db = FirebaseFirestore.instance;

      if (fetchType == 'new') {
        List<ProductModel> productList = [];

        final querySnapshot =
            await db.collection(Collection.collectionProduct).limit(10).get();

        for (var docSnapshot in querySnapshot.docs) {
          final productData = docSnapshot.data();
          final product =
              ProductModel.fromJson(productData).copyWith(id: docSnapshot.id);

          productList.add(product);
        }
        productList.sort(
          (a, b) {
            final dateA = a.date;
            final dateB = b.date;
            return dateB!.compareTo(dateA!);
          },
        );
        return Right(productList);
      } else {
        List<ProductModel> productList = [];

        final querySnapshot =
            await db.collection(Collection.collectionProduct).get();

        for (var docSnapshot in querySnapshot.docs) {
          final productData = docSnapshot.data();
          final product =
              ProductModel.fromJson(productData).copyWith(id: docSnapshot.id);

          productList.add(product);
        }
        return Right(productList);
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  Future<List<String>> uploadImagesToFirebaseStorage(
      List<Media> selectedImages, context) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    List<String> downloadUrls = [];

    for (int i = 0; i < selectedImages.length; i++) {
      final Media media = selectedImages[i];
      final File file = File(media.path!);
      final Reference storageReference = storage.ref().child('image_$file.jpg');

      try {
        await storageReference.putFile(file);
        final String downloadURL = await storageReference.getDownloadURL();
        downloadUrls.add(downloadURL);
        snackBar(context: context, msg: 'Image $i uploaded');
      } catch (e) {
        snackBar(context: context, msg: 'Error uploading image $i: $e');
      }
    }

    return downloadUrls;
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getProductsByCategory(
      String category, context) async {
    try {
      final db = FirebaseFirestore.instance;
      List<ProductModel> productsList = [];
      final querySnapshot = await db
          .collection(Collection.collectionProduct)
          .where('category', isEqualTo: category)
          .get();
      for (var docSnapshot in querySnapshot.docs) {
        final productDatas = docSnapshot.data();
        final products =
            ProductModel.fromJson(productDatas).copyWith(id: docSnapshot.id);
        productsList.add(products);
      }
      return Right(productsList);
    } catch (e) {
      snackBar(context: context, msg: 'Something went wrong');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getLaptops(
      String category, context) async {
    return getProductsByCategory(category, context);
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getEarphones(
      String category, context) {
    return getProductsByCategory(category, context);
  }

  @override
  Future<Either<MainFailure, ProductModel>> getProduct(
      String productId, context) async {
    String? id;
    try {
      final db = FirebaseFirestore.instance;
      final docRef = await db
          .collection(Collection.collectionProduct)
          .doc(productId)
          .get()
          .then((doc) {
        id = doc.id;
        return doc.data();
      });
      final product = ProductModel.fromJson(docRef!).copyWith(id: id);

      return Right(product);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getMobiles(
      String category, context) {
    return getProductsByCategory(category, context);
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> searchProducts(
      String searchQuery, String sort) async {
    try {
      final db = FirebaseFirestore.instance;
      QuerySnapshot querySnapshot = await db
          .collection(Collection.collectionProduct)
          .where("category", isGreaterThanOrEqualTo: searchQuery)
          .where('category', isLessThanOrEqualTo: '$searchQuery\uf7ff')
          .get();

      List<ProductModel> products = [];
      for (var docSnapshot in querySnapshot.docs) {
        var productData = docSnapshot.data() as Map<String, dynamic>;

        var user = ProductModel.fromJson(productData);

        products.add(user);
      }
      if (sort == "low") {
        products.sort(
          (a, b) {
            final double amountA = a.amount;
            final double amountB = b.amount;
            return amountA.compareTo(amountB);
          },
        );
      } else if (sort == "high") {
        products.sort(
          (a, b) {
            final double amountA = a.amount;
            final double amountB = b.amount;
            return amountB.compareTo(amountA);
          },
        );
      }
      return Right(products);
    } catch (e) {
      print(e.toString());
      return Left(MainFailure.clientFailure());
    }
  }
}
