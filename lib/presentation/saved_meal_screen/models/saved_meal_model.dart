import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [saved_meal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedMealModel {
  Rx<List<UserprofileItemModel>> userprofileItemList =
      Rx(List.generate(4, (index) => UserprofileItemModel()));
}
