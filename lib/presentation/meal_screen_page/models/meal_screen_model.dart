import '../../../core/app_export.dart';
import 'fruitinfo_item_model.dart';

/// This class defines the variables used in the [meal_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MealScreenModel {
  Rx<List<FruitinfoItemModel>> fruitinfoItemList =
      Rx(List.generate(4, (index) => FruitinfoItemModel()));
}
