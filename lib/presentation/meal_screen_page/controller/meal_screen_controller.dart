import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/meal_screen_page/models/meal_screen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MealScreenPage.
///
/// This class manages the state of the MealScreenPage, including the
/// current mealScreenModelObj
class MealScreenController extends GetxController {
  MealScreenController(this.mealScreenModelObj);

  TextEditingController searchtwooneController = TextEditingController();

  Rx<MealScreenModel> mealScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchtwooneController.dispose();
  }
}
