import 'package:flutter/material.dart';
import 'package:madhav_ecommerece/core/app_export.dart';
import 'package:madhav_ecommerece/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WomantshirticonItemWidget extends StatelessWidget {
  const WomantshirticonItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgWomanTShirtIcon,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          "T-Shirt",
          style: CustomTextStyles.labelMediumBluegray300,
        ),
      ],
    );
  }
}
