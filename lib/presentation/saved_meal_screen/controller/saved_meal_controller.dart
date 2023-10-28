import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/saved_meal_screen/models/saved_meal_model.dart';

/// A controller class for the SavedMealScreen.
///
/// This class manages the state of the SavedMealScreen, including the
/// current savedMealModelObj
class SavedMealController extends GetxController {
  Rx<SavedMealModel> savedMealModelObj = SavedMealModel().obs;
}
