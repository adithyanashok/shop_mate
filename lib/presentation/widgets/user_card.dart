import 'package:flutter/material.dart';
import 'package:shop_mate/domain/users/model/user.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: const CircleAvatar(
      //   backgroundColor: AppColor.dartBlueColor,
      // ),
      title: BuildSmallText(text: user.username!),
      subtitle: BuildSmallText(text: user.email!),
      tileColor: AppColor.lightGrey,
      leading: CircleAvatar(
        backgroundColor: AppColor.greenColor,
        child: user.isAdmin == true
            ? const Icon(
                Icons.admin_panel_settings_sharp,
                color: AppColor.whiteColor,
              )
            : const Icon(
                Icons.person,
                color: AppColor.whiteColor,
              ),
      ),
    );
  }
}
