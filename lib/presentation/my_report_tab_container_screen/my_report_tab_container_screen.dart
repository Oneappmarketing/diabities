import 'controller/my_report_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/my_report_page/my_report_page.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyReportTabContainerScreen
    extends GetWidget<MyReportTabContainerController> {
  const MyReportTabContainerScreen({Key? key})
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
            text: "lbl_my_report".tr,
            margin: EdgeInsets.only(
              top: 58.v,
              bottom: 28.v,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgReply,
              margin: EdgeInsets.fromLTRB(24.h, 55.v, 24.h, 29.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_weekly_report".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer_1,
                  ),
                ),
                Container(
                  height: 30.v,
                  width: 301.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 29.v,
                  ),
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.whiteA700,
                    labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Airbnb Cereal App',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Airbnb Cereal App',
                      fontWeight: FontWeight.w400,
                    ),
                    indicator: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_today".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_weekly".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_monthly".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 589.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      MyReportPage(),
                      MyReportPage(),
                      MyReportPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
