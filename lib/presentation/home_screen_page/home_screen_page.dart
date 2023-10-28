import '../home_screen_page/widgets/usermedication_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/usermedication_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_circleimage.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_floating_button.dart';
import 'package:john_s_application3/widgets/custom_radio_button.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 95.v,
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgIconhamburger,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_hi_sophia".tr,
            margin: EdgeInsets.only(left: 19.h),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 1.v,
              ),
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder27,
              ),
              child: AppbarCircleimage(
                imagePath: ImageConstant.imgAva21,
                margin: EdgeInsets.only(
                  right: 1.h,
                  bottom: 1.v,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 13.v),
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage273,
                      height: 160.v,
                      width: 295.h,
                    ),
                    Container(
                      width: 285.h,
                      margin: EdgeInsets.only(
                        top: 15.v,
                        right: 10.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_the".tr,
                              style:
                                  CustomTextStyles.bodyLargeAirbnbCerealApp_1,
                            ),
                            TextSpan(
                              text: "lbl_glycemic_load".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: "msg_gl_is_a_measure".tr,
                              style:
                                  CustomTextStyles.bodyLargeAirbnbCerealApp_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              Obx(
                () => CustomRadioButton(
                  width: 327.h,
                  text: "lbl_medicines".tr,
                  value: "lbl_medicines".tr,
                  groupValue: controller.radioGroup.value,
                  isRightCheck: true,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  },
                ),
              ),
              SizedBox(height: 23.v),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 20.v,
                      );
                    },
                    itemCount: controller.homeScreenModelObj.value
                        .usermedicationItemList.value.length,
                    itemBuilder: (context, index) {
                      UsermedicationItemModel model = controller
                          .homeScreenModelObj
                          .value
                          .usermedicationItemList
                          .value[index];
                      return UsermedicationItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 56,
          width: 56,
          backgroundColor: theme.colorScheme.onPrimaryContainer,
          child: CustomImageView(
            svgPath: ImageConstant.imgIconadd,
            height: 28.0.v,
            width: 28.0.h,
          ),
        ),
      ),
    );
  }
}
