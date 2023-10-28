import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userName,
    this.userScore,
    this.id,
  }) {
    userName = userName ?? Rx("Banana (fresh)");
    userScore = userScore ?? Rx("3.6 GL");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? userScore;

  Rx<String>? id;
}
