import '../controller/splash_two_controller.dart';
import '../models/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  var controller = Get.find<SplashTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgIconselect,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
            ),
            child: Obx(
              () => Text(
                cardItemModelObj.typeCounter!.value,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeAirbnbCerealApp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
