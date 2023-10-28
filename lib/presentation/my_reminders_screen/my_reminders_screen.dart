import 'controller/my_reminders_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/core/utils/validation_functions.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';
import 'package:john_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyRemindersScreen extends GetWidget<MyRemindersController> {
  MyRemindersScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgIconback,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 55.v,
              bottom: 29.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_set_reminder".tr,
            margin: EdgeInsets.only(
              top: 56.v,
              bottom: 30.v,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgReplyOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 55.v, 24.h, 29.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 305.h,
                  margin: EdgeInsets.only(right: 21.h),
                  child: Text(
                    "msg_we_ll_send_you_reminder".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer_1,
                  ),
                ),
                SizedBox(height: 20.v),
                CustomTextFormField(
                  controller: controller.nameController,
                  hintText: "lbl_medicine_name".tr,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 19.v,
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.outlineGray3001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "msg_blood_sugar_level".tr,
                          style: CustomTextStyles.bodyLargeOnError_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_mg_dl".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.outlineGray3001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_time".tr,
                          style: CustomTextStyles.bodyLargeOnError_1,
                        ),
                      ),
                      Text(
                        "lbl_calender".tr,
                        style: CustomTextStyles.bodyLargeErrorContainer,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31.v),
                CustomElevatedButton(
                  text: "lbl_set_reminder".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToGreenDecoration,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
