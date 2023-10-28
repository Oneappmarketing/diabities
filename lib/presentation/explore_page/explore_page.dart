import 'controller/explore_controller.dart';
import 'models/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key})
      : super(
          key: key,
        );

  ExploreController controller = Get.put(ExploreController(ExploreModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
            text: "lbl_explore".tr,
            margin: EdgeInsets.only(
              top: 57.v,
              bottom: 29.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(14.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 120.v,
                          width: 295.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomElevatedButton(
                                height: 30.v,
                                width: 79.h,
                                text: "lbl_follow".tr,
                                margin: EdgeInsets.only(top: 3.v),
                                buttonStyle: CustomButtonStyles.fillGrayTL14,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumErrorContainer,
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 48.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "lbl_jimmysullivan".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnError,
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkErrorcontainer14x14,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 4.h,
                                              bottom: 3.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 48.h),
                                      child: Text(
                                        "lbl_3d".tr,
                                        style:
                                            CustomTextStyles.bodyMediumOnError,
                                      ),
                                    ),
                                    SizedBox(height: 12.v),
                                    SizedBox(
                                      width: 272.h,
                                      child: Text(
                                        "msg_diabetes_risk_factors".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            theme.textTheme.bodyLarge!.copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgAvatar1copy1,
                                height: 34.v,
                                width: 33.h,
                                radius: BorderRadius.circular(
                                  19.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        SizedBox(
                          height: 192.v,
                          width: 299.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle58,
                                height: 192.v,
                                width: 299.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      12.h, 158.v, 12.h, 12.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 1.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Text(
                                          "lbl_108k_viewed".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 1.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Text(
                                          "lbl_00_15".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            right: 14.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIconlike,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconmessage,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  top: 1.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgShare,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  top: 1.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconDetailOnerror,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 121.v,
                          width: 295.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomElevatedButton(
                                height: 30.v,
                                width: 79.h,
                                text: "lbl_follow".tr,
                                margin: EdgeInsets.only(top: 3.v),
                                buttonStyle: CustomButtonStyles.fillGrayTL14,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumErrorContainer,
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 2.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.img5811,
                                            height: 33.adaptSize,
                                            width: 33.adaptSize,
                                            radius: BorderRadius.circular(
                                              16.h,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "lbl_sam_smith".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnError,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmarkErrorcontainer14x14,
                                                      height: 14.adaptSize,
                                                      width: 14.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 4.h,
                                                        top: 2.v,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "lbl_3d".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumOnError,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.v),
                                      SizedBox(
                                        width: 292.h,
                                        child: Text(
                                          "msg_covid_19_risk_demonstrates".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 13.v),
                        SizedBox(
                          height: 192.v,
                          width: 299.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle58192x299,
                                height: 192.v,
                                width: 299.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      12.h, 158.v, 12.h, 12.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 2.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Text(
                                          "lbl_108k_viewed".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 2.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Text(
                                          "lbl_00_15".tr,
                                          style: CustomTextStyles
                                              .bodyMediumWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.v,
                            right: 14.h,
                            bottom: 2.v,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIconlike,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 1.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconmessage,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  top: 1.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 1.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgShare,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  top: 1.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 1.v,
                                ),
                                child: Text(
                                  "lbl_800".tr,
                                  style: CustomTextStyles.bodyMediumOnError,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconDetailOnerror,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
