import '../controller/profile_health_info_controller.dart';
import '../models/userprofilerow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofilerow1ItemWidget extends StatelessWidget {
  Userprofilerow1ItemWidget(
    this.userprofilerow1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilerow1ItemModel userprofilerow1ItemModelObj;

  var controller = Get.find<ProfileHealthInfoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(18.h),
            decoration: IconButtonStyleHelper.fillBlue,
            child: CustomImageView(
              svgPath: ImageConstant.imgFileErrorcontainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 19.v,
              bottom: 19.v,
            ),
            child: Obx(
              () => Text(
                userprofilerow1ItemModelObj.lorem!.value,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeAirbnbCerealApp,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 18.v,
              right: 10.h,
              bottom: 19.v,
            ),
            child: Obx(
              () => Text(
                userprofilerow1ItemModelObj.timesCounter!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
