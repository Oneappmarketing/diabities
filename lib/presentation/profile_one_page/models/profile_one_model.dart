import '../../../core/app_export.dart';
import 'profile_one_item_model.dart';

/// This class defines the variables used in the [profile_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileOneModel {
  Rx<List<ProfileOneItemModel>> profileOneItemList =
      Rx(List.generate(3, (index) => ProfileOneItemModel()));
}
