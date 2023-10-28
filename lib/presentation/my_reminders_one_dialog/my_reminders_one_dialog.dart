import 'controller/my_reminders_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

class MyRemindersOneDialog extends StatelessWidget {
  MyRemindersOneDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  MyRemindersOneController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 287.h,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgIconcolor,
            height: 91.v,
            width: 92.h,
          ),
          SizedBox(height: 25.v),
          Text(
            "msg_gestational_pills".tr,
            style: CustomTextStyles.titleLargeAirbnbCerealAppOnPrimaryContainer,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 223.h,
            child: Text(
              "msg_reminder_for_medicine".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeAirbnbCerealAppOnError.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
