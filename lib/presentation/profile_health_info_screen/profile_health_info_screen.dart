import '../profile_health_info_screen/widgets/userprofilerow1_item_widget.dart';
import 'controller/profile_health_info_controller.dart';
import 'models/userprofilerow1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileHealthInfoScreen extends GetWidget<ProfileHealthInfoController> {
  const ProfileHealthInfoScreen({Key? key})
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
            text: "lbl_health_info".tr,
            margin: EdgeInsets.only(
              top: 56.v,
              bottom: 30.v,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgIcondetailOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 55.v, 24.h, 29.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 307.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  right: 17.h,
                ),
                child: Text(
                  "msg_your_individual2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBlack900_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 14.v,
                      );
                    },
                    itemCount: controller.profileHealthInfoModelObj.value
                        .userprofilerow1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Userprofilerow1ItemModel model = controller
                          .profileHealthInfoModelObj
                          .value
                          .userprofilerow1ItemList
                          .value[index];
                      return Userprofilerow1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_save".tr,
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 32.v,
          ),
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToGreenDecoration,
        ),
      ),
    );
  }
}
