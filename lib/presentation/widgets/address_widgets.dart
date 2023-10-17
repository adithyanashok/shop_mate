import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';

Future<dynamic> addressDialog(BuildContext context, String userId) {
  String title = '';
  String address = '';
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        title: const Text("Add Shipping address"),
        children: [
          BuildTextFormField(
            label: "Title",
            hintText: "Home",
            icon: Icons.home,
            func: (value) {
              title = value;
            },
          ),
          BuildTextAreaField(
            label: "Address",
            hintText: 'Enter Address',
            icon: Icons.location_city_rounded,
            func: (value) {
              address = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddressBloc, AddressState>(
            builder: (context, state) {
              return BuildButtonWidget(
                text: "Done",
                state: state,
                onTap: () {
                  addAddress(context, title, address, userId);
                },
              );
            },
          )
        ],
      );
    },
  );
}

void addAddress(
    BuildContext context, String title, String address, String userId) {
  if (title != null || address != null) {
    BlocProvider.of<AddressBloc>(context).add(
      AddressEvent.addAddress(
        addressModel: AddressModel(
          userId: userId,
          title: title,
          address: address,
        ),
        context: context,
      ),
    );
    BlocProvider.of<AddressBloc>(context)
        .add(AddressEvent.getAddress(userId: userId!, context: context));
  } else {
    snackBar(context: context, msg: "Please fill the form");
  }
}
