import '../splash_one_screen/widgets/userprofilerow_item_widget.dart';
import 'controller/splash_one_controller.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SplashOneScreen extends GetWidget<SplashOneController> {
  const SplashOneScreen({Key? key})
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
            vertical: 60.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Container(
                  height: 6.v,
                  width: 328.h,
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
                      value: 0.25,
                      backgroundColor: appTheme.blue50,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        appTheme.red400,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 42.v,
                ),
                child: Text(
                  "msg_tell_us_about_yourself".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Container(
                width: 292.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 7.v,
                  right: 35.h,
                ),
                child: Text(
                  "msg_your_individual".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 43.v,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0.v),
                          child: SizedBox(
                            width: 327.h,
                            child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray200,
                            ),
                          ),
                        );
                      },
                      itemCount: controller.splashOneModelObj.value
                          .userprofilerowItemList.value.length,
                      itemBuilder: (context, index) {
                        UserprofilerowItemModel model = controller
                            .splashOneModelObj
                            .value
                            .userprofilerowItemList
                            .value[index];
                        return UserprofilerowItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
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
