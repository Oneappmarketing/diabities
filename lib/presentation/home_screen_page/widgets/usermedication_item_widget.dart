import '../controller/home_screen_controller.dart';
import '../models/usermedication_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class UsermedicationItemWidget extends StatelessWidget {
  UsermedicationItemWidget(
    this.usermedicationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsermedicationItemModel usermedicationItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 94.adaptSize,
            width: 94.adaptSize,
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImagepost4,
              height: 94.adaptSize,
              width: 94.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    usermedicationItemModelObj.userMedicationT!.value,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    usermedicationItemModelObj.userGestational!.value,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                  ),
                ),
                SizedBox(height: 22.v),
                Obx(
                  () => CustomRadioButton(
                    width: 187.h,
                    text: "lbl_3_times".tr,
                    value: "lbl_3_times".tr,
                    groupValue: usermedicationItemModelObj.radioGroup.value,
                    textStyle:
                        CustomTextStyles.bodyLargeAirbnbCerealAppOnError_1,
                    isRightCheck: true,
                    onChange: (value) {
                      usermedicationItemModelObj.radioGroup.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
