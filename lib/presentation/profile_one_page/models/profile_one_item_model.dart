import '../../../core/app_export.dart';

/// This class is used in the [profile_one_item_widget] screen.
class ProfileOneItemModel {
  ProfileOneItemModel({
    this.button,
    this.id,
  }) {
    button = button ?? Rx("Notification");
    id = id ?? Rx("");
  }

  Rx<String>? button;

  Rx<String>? id;
}
