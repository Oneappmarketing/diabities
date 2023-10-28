import '../controller/saved_meal_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<SavedMealController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 52.adaptSize,
          width: 52.adaptSize,
          decoration: AppDecoration.fillGray400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImagepost452x52,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofileItemModelObj.userName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.userScore!.value,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnError_1,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgCheckmarkErrorcontainer,
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 6.v),
        ),
      ],
    );
  }
}
