import '../../../core/app_export.dart';

/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {
  UserprofilerowItemModel({
    this.lorem,
    this.gender,
    this.id,
  }) {
    lorem = lorem ?? Rx("Gender");
    gender = gender ?? Rx("Male");
    id = id ?? Rx("");
  }

  Rx<String>? lorem;

  Rx<String>? gender;

  Rx<String>? id;
}
