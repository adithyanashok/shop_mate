import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/domain/product/i_product_facade.dart';
import 'package:shop_mate/domain/product/model/product.dart';
import 'package:shop_mate/infrastructure/product/product_repositary.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({
    super.key,
  });

  String? name;
  String? description;
  String? amount;
  String? quantity;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteColor,
      width: 1.sw,
      height: 11.sh,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BuildHeadingText(text: 'Add Product'),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  )
                ],
              ),
              BuildTextFormField(
                label: "Product name",
                hintText: 'Enter product name',
                icon: Icons.abc,
                func: (value) {
                  name = value;
                },
              ),
              BuildTextAreaField(
                label: "Desciption",
                hintText: 'Enter product description',
                icon: Icons.description,
                func: (value) {
                  description = value;
                },
              ),
              BuildTextFormField(
                label: "Amount",
                hintText: 'Enter product amount',
                icon: Icons.money,
                keyboardType: TextInputType.multiline,
                func: (value) {
                  amount = value;
                },
              ),
              BuildTextFormField(
                label: "Quantity",
                hintText: 'Enter product quantity',
                icon: Icons.shopping_basket,
                keyboardType: TextInputType.multiline,
                func: (value) {
                  quantity = value;
                },
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.image,
                  color: AppColor.greenColor,
                ),
                label: const Text(
                  "Add Image",
                  style: TextStyle(color: AppColor.greenColor),
                ),
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return BuildButtonWidget(
                    text: "Upload",
                    onTap: () {
                      final am = double.parse(amount!);
                      final qty = int.parse(quantity!);
                      BlocProvider.of<ProductBloc>(context).add(
                        ProductEvent.addProduct(
                          product: ProductModel(
                              name: name!,
                              description: description!,
                              amount: am,
                              quantity: qty,
                              image:
                                  'https://idestiny.in/wp-content/uploads/2021/10/MacBook_Pro_16-in_Silver_PDP_Image_Position-1__en-IN.jpg'),
                        ),
                      );
                    },
                    state: state,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
