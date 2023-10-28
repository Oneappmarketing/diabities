import '../saved_meal_screen/widgets/userprofile_item_widget.dart';
import 'controller/saved_meal_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SavedMealScreen extends GetWidget<SavedMealController> {
  const SavedMealScreen({Key? key})
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
            text: "lbl_saved_meal".tr,
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              Container(
                width: 319.h,
                margin: EdgeInsets.only(right: 7.h),
                child: Text(
                  "msg_you_can_add_or_delete".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer_1,
                ),
              ),
              SizedBox(height: 20.v),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 9.5.v),
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
                    itemCount: controller.savedMealModelObj.value
                        .userprofileItemList.value.length,
                    itemBuilder: (context, index) {
                      UserprofileItemModel model = controller.savedMealModelObj
                          .value.userprofileItemList.value[index];
                      return UserprofileItemWidget(
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
          height: 60.v,
          text: "lbl_add_meal".tr,
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 32.v,
          ),
          buttonStyle: CustomButtonStyles.fillGray,
          buttonTextStyle: theme.textTheme.bodyLarge!,
        ),
      ),
    );
  }
}
