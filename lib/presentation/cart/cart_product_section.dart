import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/presentation/cart/cart_screen.dart';
import 'package:shop_mate/presentation/cart/skelton.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CartProductSection extends StatelessWidget {
  CartProductSection({
    super.key,
  });

  final String? userId = FirebaseAuth.instance.currentUser?.uid;

  // Get the current user's ID, which can be null.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 0.4.sh,
          child: ListView.separated(
            itemBuilder: (context, index) {
              final product = state.cart.products[index];

              // Create a Slidable widget for each product.
              return state.isDeleting
                  ? const CartProductSkelton()
                  : Slidable(
                      key: Key(product['productId']),
                      startActionPane: ActionPane(
                        motion: const DrawerMotion(),
                        extentRatio: 0.25,
                        dismissible: DismissiblePane(
                          onDismissed: () {
                            // // Trigger the CartBloc to delete the product.
                            BlocProvider.of<CartBloc>(context).add(
                              CartEvent.deleteProduct(
                                  cartModel: CartModel(
                                    userId: userId!,
                                    totalPrice: state.cart.totalPrice,
                                    products: [
                                      {
                                        "name": product['name'],
                                        "description": product['description'],
                                        "category": product['category'],
                                        "amount": product['amount'],
                                        "quantity": product['quantity'],
                                        "image": product['image'],
                                        "productId": product['productId'],
                                        "deliveryFee": product['deliveryFee'],
                                        "discount": product['discount'],
                                      }
                                    ],
                                    totalDeliveryFee:
                                        state.cart.totalDeliveryFee,
                                    totalDiscount: state.cart.totalDiscount,
                                    subTotal: state.cart.subTotal,
                                  ),
                                  context: context),
                            );
                          },
                          closeOnCancel: false,
                        ),
                        children: [
                          SlidableAction(
                            icon: Icons.delete,
                            backgroundColor: Colors.red,
                            onPressed: (context) {},
                          ),
                        ],
                      ),
                      child: Card(
                        color: AppColor.whiteColor,
                        surfaceTintColor: AppColor.whiteColor,
                        shadowColor: AppColor.lightGrey,
                        elevation: 2,
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    product['image'],
                                    width: 80,
                                    height: 80,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BuildSmallText(
                                          text: product['name'].toString()),
                                      SizedBox(
                                        width: 0.5.sw,
                                        child: BuildSmallText(
                                          text:
                                              product['description'].toString(),
                                          color: AppColor.colorGrey1,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              // Increment and decrement the quantity of the product.
                              BlocBuilder<CartBloc, CartState>(
                                builder: (context, state) {
                                  return Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Trigger CartBloc to increment the quantity.
                                          BlocProvider.of<CartBloc>(context)
                                              .add(CartEvent.incrementQty(
                                                  cartModel: CartModel(
                                                    userId: userId!,
                                                    totalPrice:
                                                        state.cart.totalPrice,
                                                    products: [
                                                      {
                                                        "name": product['name'],
                                                        "description": product[
                                                            'description'],
                                                        "category":
                                                            product['category'],
                                                        "amount":
                                                            product['amount'],
                                                        "quantity":
                                                            product['quantity'],
                                                        "image":
                                                            product['image'],
                                                        "productId": product[
                                                            'productId'],
                                                        "deliveryFee": product[
                                                            'deliveryFee'],
                                                        "discount": 50,
                                                      }
                                                    ],
                                                    totalDeliveryFee: state
                                                        .cart.totalDeliveryFee,
                                                    totalDiscount: state
                                                        .cart.totalDiscount,
                                                    subTotal:
                                                        state.cart.subTotal,
                                                  ),
                                                  type: 'inc',
                                                  context: context));
                                        },
                                        child: const CartQtyButton(
                                            icon: Icons.add),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: state.isLoading
                                            ? BuildRegularTextWidget(
                                                text: product['quantity']
                                                    .toString(),
                                                fontSize: 13,
                                                color: Colors.grey,
                                              )
                                            : BuildRegularTextWidget(
                                                text: product['quantity']
                                                    .toString(),
                                                fontSize: 13,
                                              ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Trigger CartBloc to decrement the quantity.
                                          BlocProvider.of<CartBloc>(context)
                                              .add(CartEvent.incrementQty(
                                                  cartModel: CartModel(
                                                    userId: userId!,
                                                    totalPrice:
                                                        state.cart.totalPrice,
                                                    products: [
                                                      {
                                                        "name": product['name'],
                                                        "description": product[
                                                            'description'],
                                                        "category":
                                                            product['category'],
                                                        "amount":
                                                            product['amount'],
                                                        "quantity":
                                                            product['quantity'],
                                                        "image":
                                                            product['image'],
                                                        "productId": product[
                                                            'productId'],
                                                        "deliveryFee": product[
                                                            'deliveryFee'],
                                                        "discount":
                                                            product['discount'],
                                                      }
                                                    ],
                                                    totalDeliveryFee: state
                                                        .cart.totalDeliveryFee,
                                                    totalDiscount: state
                                                        .cart.totalDiscount,
                                                    subTotal:
                                                        state.cart.subTotal,
                                                  ),
                                                  type: 'dec',
                                                  context: context));
                                        },
                                        child: const CartQtyButton(
                                            icon: Icons.remove),
                                      ),
                                    ],
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: state.cart.products.length,
          ),
        );
      },
    );
  }
}
