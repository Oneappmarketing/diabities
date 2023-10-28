import '../controller/meal_screen_controller.dart';
import '../models/fruitinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class FruitinfoItemWidget extends StatelessWidget {
  FruitinfoItemWidget(
    this.fruitinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FruitinfoItemModel fruitinfoItemModelObj;

  var controller = Get.find<MealScreenController>();

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
                  fruitinfoItemModelObj.fruitName!.value,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  fruitinfoItemModelObj.fruitGL!.value,
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
