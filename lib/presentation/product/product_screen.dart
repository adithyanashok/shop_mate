import 'dart:developer';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/pageview/pageview_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/rating/rating.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/star_rating_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PageviewBloc>(context)
        .add(const PageviewEvent.onPageChanged(currentIndex: 0));
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    PageController pageController = PageController(initialPage: 0);
    BlocProvider.of<ProductBloc>(context).add(ProductEvent.getProduct(
        productId: productId.toString(), context: context));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const BuildRegularTextWidget(text: 'Product Details'),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          final product = state.product;
          return SafeArea(
            child: state.isLoading
                ? const BuildLoadingWidget()
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 1.sw,
                          height: .4.sh,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: PageView.builder(
                            itemCount: product.image.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Image.network(
                                product.image[index],
                                width: 340,
                                fit: BoxFit.contain,
                              );
                            },
                            controller: pageController,
                            onPageChanged: (value) {
                              BlocProvider.of<PageviewBloc>(context).add(
                                PageviewEvent.onPageChanged(
                                  currentIndex: value,
                                ),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: BlocBuilder<PageviewBloc, PageviewState>(
                            builder: (context, state) {
                              log(state.currentIndex.toString());
                              if (product.image.isNotEmpty) {
                                return DotsIndicator(
                                  dotsCount: product.image.length,
                                  position: state.currentIndex,
                                  decorator: const DotsDecorator(
                                    color: AppColor.colorGrey3,
                                    activeColor: AppColor.greenColor,
                                  ),
                                );
                              } else {
                                return const Text('No images available');
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: BuildSmallText(
                            text: product.description,
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
                                "\$${product.amount.round()}",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.greenColor,
                                ),
                              ),
                            ),
                            StarRatingWidget(initialRating: 4, readOnly: true),
                            // SizedBox(
                            //   width: 140,
                            //   height: 35,
                            //   child: ListView.separated(
                            //     scrollDirection: Axis.horizontal,
                            //     itemBuilder: (context, index) {
                            //       return CircleAvatar(
                            //         backgroundColor: Colors.blue[index],
                            //       );
                            //     },
                            //     separatorBuilder: (context, index) {
                            //       return const SizedBox();
                            //     },
                            //     itemCount: 3,
                            //   ),
                            // )
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: BuildHeadingText(text: "Product Review"),
                            ),
                            RatingProductWidget(
                              productId: productId.toString(),
                              userId: userId!,
                            )
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: .8.sh,
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: SizedBox(
                                    width: 200,
                                    // height: 200,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Greate Product",
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              StarRatingWidget(
                                                initialRating: 5,
                                                readOnly: true,
                                              )
                                            ],
                                          ),
                                          const BuildSmallText(
                                            text:
                                                "Awesome product loved it, nice quality. value fo money",
                                            textOverflow: TextOverflow.visible,
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
                  ),
          );
        },
      ),
    );
  }
}
