import '../splash_two_screen/widgets/card_item_widget.dart';
import 'controller/splash_two_controller.dart';
import 'models/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_checkbox_button.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SplashTwoScreen extends GetWidget<SplashTwoController> {
  const SplashTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 51.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconback,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 9.v,
                          bottom: 9.v,
                        ),
                        child: Container(
                          height: 6.v,
                          width: 284.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue50,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor: appTheme.blue50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.red400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 262.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 31.v,
                  right: 65.h,
                ),
                child: Text(
                  "msg_what_diabetes_type".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 39.v,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 100.v,
                        );
                      },
                      itemCount: controller
                          .splashTwoModelObj.value.cardItemList.value.length,
                      itemBuilder: (context, index) {
                        CardItemModel model = controller
                            .splashTwoModelObj.value.cardItemList.value[index];
                        return CardItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Obx(
                () => CustomCheckboxButton(
                  text: "lbl_type_2".tr,
                  value: controller.typeTwo.value,
                  margin: EdgeInsets.only(left: 1.h),
                  padding: EdgeInsets.fromLTRB(20.h, 18.v, 30.h, 18.v),
                  onChange: (value) {
                    controller.typeTwo.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_next".tr,
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
