import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/presentation/checkout/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/widgets/address_widgets.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class Address extends StatelessWidget {
  Address({super.key}); // Constructor for the Address widget.

  String title = ''; // Initialize an empty string for the title.
  String address = ''; // Initialize an empty string for the address.

  @override
  Widget build(BuildContext context) {
    final userId =
        FirebaseAuth.instance.currentUser!.uid; // Get the current user's ID.

    // Trigger the AddressBloc to fetch the user's addresses.
    BlocProvider.of<AddressBloc>(context).add(
      AddressEvent.getAddress(userId: userId, context: context),
    );

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(
            text: "Address"), // Set the app bar title.
        centerTitle: true, // Center the app bar title.
        actions: [
          IconButton(
            onPressed: () {
              addressDialog(context, userId); // Show an address input dialog.
            },
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<AddressBloc, AddressState>(
          builder: (context, state) {
            return state.isLoading
                ? const BuildLoadingWidget() // Display loading widget if data is loading.
                : state.addressModelList.isEmpty
                    ? const Center(
                        child: Text(
                            "No Address found"), // Display a message if no addresses are found.
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          final data = state.addressModelList[index];

                          // Show a dialog to edit the address on long press.
                          return GestureDetector(
                            onLongPress: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    title: const Text("Add Shipping address"),

                                    // Input fields for updating the address.
                                    children: [
                                      BuildTextFormField(
                                        label: "Title",
                                        hintText: "Home",
                                        icon: Icons.home,
                                        initialValue: data.title,
                                        func: (value) {
                                          title = value;
                                        },
                                      ),
                                      BuildTextAreaField(
                                        label: "Address",
                                        hintText: 'Enter Address',
                                        initialValue: data.address,
                                        icon: Icons.location_city_rounded,
                                        func: (value) {
                                          address = value;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      BuildButtonWidget(
                                        text: "Done",

                                        // Trigger the update of the address using AddressBloc.
                                        onTap: () {
                                          BlocProvider.of<AddressBloc>(context)
                                              .add(
                                            AddressEvent.updateAddress(
                                              addressModel: AddressModel(
                                                userId: userId,
                                                title: title,
                                                address: address,
                                                id: data.id,
                                              ),
                                              context: context,
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: BuildAddressCard(
                              title: data.title,
                              text: data.address,
                              showRadioButton: false,

                              // Trigger a dialog to confirm address deletion.
                              deleteAddress: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const BuildSmallText(
                                        text:
                                            "Are you sure you want to delete?",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const BuildSmallText(
                                              text: "Cancel"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            // Trigger the deletion of the address using AddressBloc.
                                            BlocProvider.of<AddressBloc>(
                                                    context)
                                                .add(
                                              AddressEvent.deleteAddress(
                                                id: data.id!,
                                                userId: userId,
                                                context: context,
                                              ),
                                            );
                                          },
                                          child: const BuildSmallText(
                                            text: "Delete",
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox();
                        },
                        itemCount: state.addressModelList.length,
                      );
          },
        ),
      ),
    );
  }
}
