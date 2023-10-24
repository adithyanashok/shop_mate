import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/domain/product/model/product.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';
import 'package:image_pickers/image_pickers.dart';

class EditProductScreen extends StatefulWidget {
  EditProductScreen({
    super.key,
    this.product,
    required this.id,
  });
  final dynamic product;
  final String id;

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  List<Media>? image;
  String? name;

  String? description;

  String? amount;

  String? quantity;

  String? category;

  bool error = false;

  @override
  void initState() {
    super.initState();
    name = widget.product.name;
    description = widget.product.description;
    amount = widget.product.amount.toString();
    quantity = widget.product.quantity.toString();
    category = widget.product.category;
  }

  @override
  Widget build(BuildContext context) {
    log(widget.product.id.toString());
    return Container(
      color: AppColor.whiteColor,
      width: 1.sw,
      height: .9.sh,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  error == true
                      ? const CircleAvatar()
                      : const BuildHeadingText(text: 'Edit Product'),
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
                initialValue: widget.product.name,
                icon: Icons.abc,
                func: (value) {
                  name = value = value.isNotEmpty ? value : widget.product.name;
                },
              ),
              BuildTextAreaField(
                label: "Desciption",
                hintText: 'Enter product description',
                icon: Icons.description,
                initialValue: widget.product.description,
                func: (value) {
                  description = value =
                      value.isNotEmpty ? value : widget.product.description;
                },
              ),
              BuildTextFormField(
                label: "Amount",
                hintText: 'Enter product amount',
                icon: Icons.money,
                initialValue: widget.product.amount.toString(),
                keyboardType: TextInputType.number,
                func: (value) {
                  amount =
                      value = value.isNotEmpty ? value : widget.product.amount;
                },
              ),
              BuildTextFormField(
                label: "Quantity",
                hintText: 'Enter product quantity',
                icon: Icons.shopping_basket,
                initialValue: widget.product.quantity.toString(),
                keyboardType: TextInputType.number,
                func: (value) {
                  quantity = value =
                      value.isNotEmpty ? value : widget.product.quantity;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownMenu(
                onSelected: (value) {
                  category = value = value.toString().isNotEmpty
                      ? value
                      : widget.product.category;
                },
                menuStyle: const MenuStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColor.colorGrey3),
                ),
                hintText: "Category",
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: 'laptop', label: 'Laptops'),
                  DropdownMenuEntry(value: 'mobile', label: 'Mobiles'),
                  DropdownMenuEntry(value: 'earphone', label: 'Earphones'),
                ],
                initialSelection: widget.product.category,
              ),
              TextButton.icon(
                onPressed: () async {
                  List<Media> selectedImages =
                      await pickMultipleImages(context);
                  if (selectedImages.isNotEmpty) {
                    image = selectedImages;
                  }
                },
                icon: const Icon(
                  Icons.image,
                  color: AppColor.greenColor,
                ),
                label: image != null
                    ? const Text(
                        "Image Added",
                        style: TextStyle(color: AppColor.greenColor),
                      )
                    : const Text(
                        "Add Image",
                        style: TextStyle(color: AppColor.greenColor),
                      ),
              ),
              BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return BuildButtonWidget(
                    text: "Update",
                    onTap: () {
                      uploadData(
                        name,
                        description,
                        quantity,
                        category,
                        amount,
                        context,
                      );
                      BlocProvider.of<ProductBloc>(context).add(
                        const ProductEvent.getAllProduct(
                          fetchType: 'all-products',
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

  Future<List<Media>> pickMultipleImages(context) async {
    try {
      List<Media> selectedImages = await ImagePickers.pickerPaths(
        galleryMode: GalleryMode.image,
        selectCount: 5, // Set the maximum number of images to pick
      );
      return selectedImages;
    } catch (e) {
      snackBar(context: context, msg: 'Something went wrong');
      return [];
    }
  }

  void uploadData(name, description, quantity, category, amount, context) {
    if (name == null ||
        description == null ||
        quantity == null ||
        category == null ||
        amount == null) {
      snackBar(context: context, msg: 'Please fill the form');
    } else {
      final parsedAmount = double.parse(amount!);
      final parsedQty = int.parse(quantity!);
      BlocProvider.of<ProductBloc>(context).add(
        ProductEvent.editProduct(
          product: ProductModel(
            name: name!,
            description: description!,
            category: category!,
            amount: parsedAmount,
            quantity: parsedQty,
            id: widget.product.id,
          ),
          selectedImages: image,
          context: context,
        ),
      );
    }
  }
}
