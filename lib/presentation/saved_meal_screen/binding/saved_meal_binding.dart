import '../controller/saved_meal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SavedMealScreen.
///
/// This class ensures that the SavedMealController is created when the
/// SavedMealScreen is first loaded.
class SavedMealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SavedMealController());
  }
}
