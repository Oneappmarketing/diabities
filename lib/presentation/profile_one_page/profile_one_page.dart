import '../profile_one_page/widgets/profile_one_item_widget.dart';
import 'controller/profile_one_controller.dart';
import 'models/profile_one_item_model.dart';
import 'models/profile_one_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_icon_button.dart';
import 'package:john_s_application3/widgets/custom_radio_button.dart';
import 'package:john_s_application3/widgets/custom_text_form_field.dart';

class ProfileOnePage extends StatelessWidget {
  ProfileOnePage({Key? key})
      : super(
          key: key,
        );

  ProfileOneController controller =
      Get.put(ProfileOneController(ProfileOneModel().obs));

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
            text: "lbl_my_profile".tr,
            margin: EdgeInsets.only(
              top: 57.v,
              bottom: 29.v,
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgIconreport,
              margin: EdgeInsets.fromLTRB(24.h, 55.v, 24.h, 29.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              SizedBox(
                height: 201.v,
                width: 327.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: SizedBox(
                          width: 327.h,
                          child: Divider(
                            color: appTheme.gray300,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 46.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 48.v),
                            Text(
                              "lbl_sophia_callvan".tr,
                              style: CustomTextStyles.titleLargeBlack900,
                            ),
                            Container(
                              width: 232.h,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                right: 1.h,
                              ),
                              child: Text(
                                "msg_gestational_diabetes_a".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.bodyMediumOnError.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAva2183x83,
                      height: 83.adaptSize,
                      width: 83.adaptSize,
                      radius: BorderRadius.circular(
                        41.h,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 59.v,
                  child: Obx(
                    () => ListView.separated(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 29.v,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 30.h,
                        );
                      },
                      itemCount: controller.profileOneModelObj.value
                          .profileOneItemList.value.length,
                      itemBuilder: (context, index) {
                        ProfileOneItemModel model = controller
                            .profileOneModelObj
                            .value
                            .profileOneItemList
                            .value[index];
                        return ProfileOneItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Obx(
                () => CustomRadioButton(
                  text: "msg_gestational_2_pill".tr,
                  value: "msg_gestational_2_pill".tr,
                  groupValue: controller.radioGroup.value,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 30.v,
                    right: 24.h,
                  ),
                  padding: EdgeInsets.fromLTRB(20.h, 19.v, 30.h, 19.v),
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  },
                ),
              ),
              CustomTextFormField(
                controller: controller.timeController,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 10.v,
                  right: 24.h,
                ),
                hintText: "msg_glucose_1_glucose".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 20.v,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgHomeBlack900,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 60.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 19.v,
                  right: 30.h,
                  bottom: 19.v,
                ),
              ),
              SizedBox(height: 54.v),
              DottedBorder(
                color: theme.colorScheme.onError,
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                radius: Radius.circular(8),
                borderType: BorderType.RRect,
                dashPattern: [
                  4,
                  4,
                ],
                child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(18.h),
                  decoration: IconButtonStyleHelper.outlineOnError,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Text(
                "lbl_add_reminder".tr,
                style: CustomTextStyles.bodyMediumOnError,
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
      ),
    );
  }
}
