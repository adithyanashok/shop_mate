import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    BlocProvider.of<ProductBloc>(context).add(ProductEvent.getProduct(
        productId: arguments.toString(), context: context));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const BuildRegularTextWidget(text: 'Product Details'),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          print(arguments);
          final product = state.product;
          return SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 1.sw,
                    height: .5.sh,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: PageView.builder(
                      itemCount: product?.image?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          product!.image![index],
                          width: 340,
                          fit: BoxFit.contain,
                        );
                      },
                    )),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    product?.name ?? 'name',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: BuildSmallText(
                    text: product?.description ?? 'desc',
                    textOverflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        "\$${product?.amount.round()}",
                        style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.greenColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      height: 35,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CircleAvatar(
                            backgroundColor: Colors.blue[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox();
                        },
                        itemCount: 3,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BuildMediumButton(
                      backgroundColor: Colors.transparent,
                      text: "BUY  NOW",
                      textColor: AppColor.greenColor,
                      borderColor: AppColor.greenColor,
                    ),
                    BuildMediumButton(
                      backgroundColor: AppColor.greenColor,
                      text: "ADD TO CART",
                      textColor: AppColor.whiteColor,
                      borderColor: AppColor.greenColor,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: BuildHeadingText(text: "Product Review"),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 205,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: SizedBox(
                            width: 200,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Greate Product",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const BuildSmallText(
                                    text:
                                        "Awesome product loved it, nice quality. value fo money",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox();
                    },
                    itemCount: 5,
                  ),
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
