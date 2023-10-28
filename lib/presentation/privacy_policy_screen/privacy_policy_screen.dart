import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
            text: "msg_privacy_policy".tr,
            margin: EdgeInsets.only(
              top: 58.v,
              bottom: 28.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_terms_conditions".tr,
                style: CustomTextStyles.headlineSmallOnPrimaryContainer,
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: 323.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_by_clicking".tr,
                        style:
                            CustomTextStyles.bodyLargeAirbnbCerealAppBlack900,
                      ),
                      TextSpan(
                        text: "msg_i_agree_you_are".tr,
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 18.v),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 286.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_these_terms_and2".tr,
                                style: CustomTextStyles.bodyLargeOnError,
                              ),
                              TextSpan(
                                text: "msg_legal_binding_agreement".tr,
                                style:
                                    CustomTextStyles.bodyLargeErrorContainer_1,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "msg_and_shall_apply".tr,
                                style:
                                    CustomTextStyles.bodyLargeErrorContainer_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        width: 192.h,
                        text: "lbl_i_agree".tr,
                        buttonStyle: CustomButtonStyles.fillBlue,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeErrorContainer,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
