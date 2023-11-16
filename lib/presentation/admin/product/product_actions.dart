import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/domain/product/model/product.dart';
import 'package:shop_mate/presentation/admin/product/edit_product/edit_product.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';

Future<dynamic> productActions(BuildContext context, ProductModel product) {
  String discount = '0';
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: Text(product.name),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.red,
                ),
                child: IconButton(
                  onPressed: () {
                    BlocProvider.of<ProductBloc>(context).add(
                      ProductEvent.deleteProduct(
                        productId: product.id!,
                        context: context,
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.green,
                ),
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text(
                            "Add Discount",
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BuildTextFormField(
                                label: "Discount",
                                hintText: "Enter percentage",
                                icon: Icons.percent,
                                keyboardType: TextInputType.number,
                                initialValue: product.discount.toString(),
                                func: (value) {
                                  discount = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: BuildMediumButton(
                                backgroundColor: AppColor.greenColor,
                                textColor: AppColor.whiteColor,
                                text: "Done",
                                onTap: () {
                                  final parsedDiscount = int.parse(discount);
                                  BlocProvider.of<ProductBloc>(context).add(
                                    ProductEvent.addDiscount(
                                      productId: product.id!,
                                      discount: parsedDiscount,
                                      context: context,
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.price_change_outlined,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.blue,
                ),
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return EditProductScreen(
                          product: product,
                          id: product.id!,
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}
