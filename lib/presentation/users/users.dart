import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';
import 'package:shop_mate/presentation/widgets/user_card.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UserBloc>(context).add(
      const UserEvent.getUsers(getAllUsers: true),
    );
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Users"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.isLoading
                ? const BuildLoadingWidget()
                : ListView.separated(
                    itemBuilder: (context, index) {
                      final user = state.userModel[index];
                      return UserCard(user: user);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: state.userModel.length,
                  );
          },
        ),
      ),
    );
  }
}
