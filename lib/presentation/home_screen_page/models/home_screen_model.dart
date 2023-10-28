import '../../../core/app_export.dart';
import 'usermedication_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  Rx<List<UsermedicationItemModel>> usermedicationItemList =
      Rx(List.generate(2, (index) => UsermedicationItemModel()));
}
