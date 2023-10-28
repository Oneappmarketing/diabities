import '../meal_screen_page/widgets/fruitinfo_item_widget.dart';
import 'controller/meal_screen_controller.dart';
import 'models/fruitinfo_item_model.dart';
import 'models/meal_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_text_form_field.dart';

class MealScreenPage extends StatelessWidget {
  MealScreenPage({Key? key})
      : super(
          key: key,
        );

  MealScreenController controller =
      Get.put(MealScreenController(MealScreenModel().obs));

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
            text: "lbl_your_meal".tr,
            margin: EdgeInsets.only(
              top: 56.v,
              bottom: 30.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 256.h,
                margin: EdgeInsets.only(right: 70.h),
                child: Text(
                  "msg_what_are_you_going".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.searchtwooneController,
                hintText: "msg_enter_a_dish_or".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 15.v, 15.h, 15.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "lbl_recently_added".tr,
                style: theme.textTheme.bodyLarge,
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
                    itemCount: controller.mealScreenModelObj.value
                        .fruitinfoItemList.value.length,
                    itemBuilder: (context, index) {
                      FruitinfoItemModel model = controller.mealScreenModelObj
                          .value.fruitinfoItemList.value[index];
                      return FruitinfoItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
