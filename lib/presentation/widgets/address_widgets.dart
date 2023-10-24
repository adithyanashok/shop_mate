import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';

// Function for displaying a dialog to add a shipping address
Future<dynamic> addressDialog(BuildContext context, String userId) {
  String title = ''; // Initialize an empty title variable
  String address = ''; // Initialize an empty address variable

  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        title: const Text("Add Shipping address"), // Dialog title
        children: [
          // Text field for entering the title (e.g., "Home")
          BuildTextFormField(
            label: "Title",
            hintText: "Home",
            icon: Icons.home,
            func: (value) {
              title = value; // Store the title input
            },
          ),
          // Text area for entering the address
          BuildTextAreaField(
            label: "Address",
            hintText: 'Enter Address',
            icon: Icons.location_city_rounded,
            func: (value) {
              address = value; // Store the address input
            },
          ),
          const SizedBox(
            height: 10,
          ),
          // Button for submitting the address
          BlocBuilder<AddressBloc, AddressState>(
            builder: (context, state) {
              return BuildButtonWidget(
                text: "Done", // Button text
                state: state, // Button state (enabled or disabled)
                onTap: () {
                  addAddress(context, title, address,
                      userId); // Call function to add address
                },
              );
            },
          )
        ],
      );
    },
  );
}

// Function for adding a shipping address
void addAddress(
    BuildContext context, String title, String address, String userId) {
  if (title.isEmpty || address.isEmpty) {
    // Check if title and address are not null
    // Dispatch an event to add the address using the AddressBloc
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

    // Fetch the updated list of addresses using AddressEvent.getAddress
    BlocProvider.of<AddressBloc>(context)
        .add(AddressEvent.getAddress(userId: userId, context: context));
  } else {
    // Display a snackbar with a message if either title or address is null
    snackBar(context: context, msg: "Please fill the form");
  }
}
