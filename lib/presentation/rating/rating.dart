import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/rating/rating_bloc.dart';
import 'package:shop_mate/domain/rating/model/rating_model.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/star_rating_widget.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class RatingProductWidget extends StatelessWidget {
  RatingProductWidget({
    super.key,
    required this.productId,
    required this.userId,
  });

  String? title;
  String? description;
  final String productId;
  final String userId;
  double? rating;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              padding: const EdgeInsets.all(10),
              width: 1.sw,
              height: .8.sh,
              color: AppColor.whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BuildRegularTextWidget(
                    text: "Add your rating",
                    color: AppColor.blackColor,
                  ),
                  StarRatingWidget(
                    initialRating: 0,
                    readOnly: false,
                    starSize: 30,
                    filledColor: AppColor.greenColor,
                    onChanged: (value) {
                      rating = value;
                    },
                  ),
                  BuildTextFormField(
                    label: "Title",
                    hintText: 'eg: Great Product!',
                    icon: Icons.star,
                    func: (value) {
                      title = value;
                    },
                  ),
                  BuildTextAreaField(
                    label: "Description",
                    hintText: 'Enter description',
                    icon: Icons.description,
                    maxLength: 250,
                    func: (value) {
                      description = value;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<RatingBloc, RatingState>(
                    builder: (context, state) {
                      return BuildButtonWidget(
                        text: "Rate",
                        onTap: () {
                          rate(context);
                          // Fetch ratings after rating to update the list.
                          BlocProvider.of<RatingBloc>(context).add(
                            RatingEvent.fetchRatings(
                              productId: productId,
                              context: context,
                            ),
                          );
                        },
                        state: state,
                      );
                    },
                  )
                ],
              ),
            );
          },
        );
      },
      icon: const Icon(
        Icons.add,
        size: 30,
      ),
    );
  }

  void rate(context) {
    if (productId.isEmpty ||
        userId.isEmpty ||
        title == null ||
        description == null ||
        rating == null) {
      snackBar(context: context, msg: "Please fill all the details");
    } else {
      // Send a rating request to the RatingBloc.
      BlocProvider.of<RatingBloc>(context).add(
        RatingEvent.rateProduct(
          ratingModel: RatingModel(
            productId: productId,
            userId: userId,
            rating: rating!,
            title: title!,
            description: description!,
          ),
          context: context,
        ),
      );
    }
  }
}
