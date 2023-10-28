import '../controller/splash_one_controller.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  var controller = Get.find<SplashOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 60.adaptSize,
          width: 60.adaptSize,
          padding: EdgeInsets.all(18.h),
          decoration: IconButtonStyleHelper.fillBlue,
          child: CustomImageView(
            svgPath: ImageConstant.imgFile,
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
              userprofilerowItemModelObj.lorem!.value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeAirbnbCerealApp,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 18.v,
            bottom: 19.v,
          ),
          child: Obx(
            () => Text(
              userprofilerowItemModelObj.gender!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
