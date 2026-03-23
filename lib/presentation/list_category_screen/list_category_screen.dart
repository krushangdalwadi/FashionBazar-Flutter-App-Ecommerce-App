import 'package:flutter/material.dart';
import 'package:madhav_ecommerece/core/app_export.dart';
import 'package:madhav_ecommerece/widgets/app_bar/appbar_leading_image.dart';
import 'package:madhav_ecommerece/widgets/app_bar/appbar_subtitle.dart';
import 'package:madhav_ecommerece/widgets/app_bar/custom_app_bar.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgArrowLeftPrimary,
                              bikini: "Shirt", onTapBikiniIcon: () {
                            onTapArrowLeft1(context);
                          }),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgBikiniIcon,
                              bikini: "Bikini"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgClock,
                              bikini: "Dress"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgManWorkEquipment,
                              bikini: "Work Equipment"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgTrash,
                              bikini: "Man Pants"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgTicket,
                              bikini: "Man Shoes"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgForward,
                              bikini: "Man Underwear"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgAirplane,
                              bikini: "Man T-Shirt"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgTrashPrimary,
                              bikini: "Woman Bag"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgWomanPantsIcon,
                              bikini: "Woman Pants"),
                          _buildCategoryOption(context,
                              bikiniIcon: ImageConstant.imgWomanShoesIcon,
                              bikini: "High Heels")
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Category", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildCategoryOption(
    BuildContext context, {
    required String bikiniIcon,
    required String bikini,
    Function? onTapBikiniIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: bikiniIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapBikiniIcon!.call();
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text(bikini,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }
}
