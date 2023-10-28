import 'controller/profile_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_bottom_bar.dart';
import 'package:john_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoScreen extends GetWidget<ProfileTwoController> {
  const ProfileTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgIconhamburger,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 55.v,
              bottom: 29.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_edit_profile".tr,
            margin: EdgeInsets.only(
              top: 56.v,
              bottom: 30.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAva2173x73,
                    height: 73.adaptSize,
                    width: 73.adaptSize,
                    radius: BorderRadius.circular(
                      36.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 29.v,
                      bottom: 27.v,
                    ),
                    child: Text(
                      "lbl_change_photo".tr,
                      style: CustomTextStyles.bodyLargeErrorContainer,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_username".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 10.v),
              CustomTextFormField(
                controller: controller.userNameController,
                hintText: "lbl_sophia_callvan".tr,
                hintStyle: CustomTextStyles.bodyLargeAirbnbCerealApp,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 16.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.v,
                  right: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_bio".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.v),
                      child: Text(
                        "lbl_68".tr,
                        style: CustomTextStyles.bodyMediumOnError,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: 327.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Container(
                  width: 273.h,
                  margin: EdgeInsets.only(
                    right: 17.h,
                    bottom: 21.v,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_dolor".tr,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeAirbnbCerealAppOnError_1,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
