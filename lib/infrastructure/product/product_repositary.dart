import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/product/i_product_facade.dart';
import 'package:shop_mate/domain/product/model/product.dart';

@LazySingleton(as: IProductFacade)
class ProductRepository implements IProductFacade {
  @override
  Future<Either<MainFailure, ProductModel>> addProduct(
    ProductModel product,
    String userId,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      final productMap = product.toJson();
      final docRef =
          await db.collection(Collection.collectionProduct).add(productMap);

      final snapshot = await docRef.get();
      final productData = snapshot.data() as Map<String, dynamic>;

      final productModel = ProductModel.fromJson(productData);
      return Right(productModel);
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ProductModel>>> getAllProducts() async {
    try {
      final db = FirebaseFirestore.instance;
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
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
