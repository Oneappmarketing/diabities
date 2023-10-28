import '../controller/profile_one_controller.dart';
import '../models/profile_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ProfileOneItemWidget extends StatelessWidget {
  ProfileOneItemWidget(
    this.profileOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileOneItemModel profileOneItemModelObj;

  var controller = Get.find<ProfileOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 119.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Obx(
            () => Text(
              profileOneItemModelObj.button!.value,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
