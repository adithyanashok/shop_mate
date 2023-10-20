import 'package:dots_indicator/dots_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/pageview/pageview_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/application/rating/rating_bloc.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/presentation/cart/cart_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
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
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.getCart(userId: userId!, context: context));
    // set index of pageview 0
    BlocProvider.of<PageviewBloc>(context)
        .add(const PageviewEvent.onPageChanged(currentIndex: 0));
    // get productid
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    //page controller
    PageController pageController = PageController(initialPage: 0);
    // get product event
    BlocProvider.of<ProductBloc>(context).add(ProductEvent.getProduct(
        productId: productId.toString(), context: context));
    // fetch ratings of the product
    BlocProvider.of<RatingBloc>(context)
        .add(RatingEvent.fetchRatings(productId: productId, context: context));

    return Scaffold(
      // Appbar
      appBar: AppBar(
        centerTitle: true,
        title: const BuildRegularTextWidget(text: 'Product Details'),
      ),
      // body
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          final product = state.product;
          return SafeArea(
            // show a loading when fetching
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
                            itemCount: product.image!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Image.network(
                                product.image![index],
                                width: 340,
                                fit: BoxFit.contain,
                              );
                            },
                            controller: pageController,
                            onPageChanged: (value) {
                              //change index of page
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
                              if (product.image!.isNotEmpty) {
                                // Dots indicator
                                return DotsIndicator(
                                  dotsCount: product.image!.length,
                                  position: state.currentIndex,
                                  // dots styles
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
                            StarRatingWidget(
                              initialRating: product.rating!.toDouble(),
                              readOnly: true,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // action button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const BuildMediumButton(
                              backgroundColor: Colors.transparent,
                              text: "BUY NOW",
                              textColor: AppColor.greenColor,
                              borderColor: AppColor.greenColor,
                            ),
                            BlocBuilder<CartBloc, CartState>(
                              builder: (context, state) {
                                bool isProductInCart = state.cart.products.any(
                                    (cartProduct) =>
                                        cartProduct["productId"] == product.id);

                                return isProductInCart
                                    ? BuildMediumButton(
                                        backgroundColor: AppColor.greenColor,
                                        text: "Go to cart",
                                        textColor: AppColor.whiteColor,
                                        borderColor: AppColor.greenColor,
                                        onTap: () {
                                          Navigator.of(context).push(
                                              buildNavigation(
                                                  route: CartScreen()));
                                        },
                                      )
                                    : BuildMediumButton(
                                        backgroundColor: AppColor.greenColor,
                                        text: "ADD TO CART",
                                        textColor: AppColor.whiteColor,
                                        borderColor: AppColor.greenColor,
                                        state: state,
                                        onTap: () {
                                          BlocProvider.of<CartBloc>(context)
                                              .add(
                                            CartEvent.addToCart(
                                              cartModel: CartModel(
                                                userId: userId!,
                                                totalPrice: product.amount * 1,
                                                products: [
                                                  {
                                                    "name": product.name,
                                                    "description":
                                                        product.description,
                                                    "category":
                                                        product.category,
                                                    "amount": product.amount,
                                                    "quantity": 1,
                                                    "image": product.image![0],
                                                    "productId": product.id,
                                                    "deliveryFee": 50,
                                                    "discount": 10,
                                                  }
                                                ],
                                                totalDeliveryFee: 0,
                                                totalDiscount: 0,
                                                subTotal: product.amount,
                                              ),
                                              context: context,
                                            ),
                                          );
                                        },
                                      );
                              },
                            ),
                          ],
                        ),
                        // product review section
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
                        const ReviewSection()
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingBloc, RatingState>(
      builder: (context, state) {
        return state.ratings.isEmpty
            ? const Center(child: Text('No Review'))
            : SizedBox(
                width: double.infinity,
                height: .2.sh,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final ratings = state.ratings[index];
                    return state.isLoading
                        ? const BuildLoadingWidget()
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              surfaceTintColor: AppColor.whiteColor,
                              child: SizedBox(
                                width: 255,
                                height: 100,
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
                                            ratings.title,
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          StarRatingWidget(
                                            starSize: 10,
                                            initialRating: ratings.rating,
                                            readOnly: true,
                                          )
                                        ],
                                      ),
                                      BuildSmallText(
                                        text: ratings.description,
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
                  itemCount: state.ratings.length,
                ),
              );
      },
    );
  }
}
