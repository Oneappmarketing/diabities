import '../../../core/app_export.dart';

/// This class is used in the [userprofilerow1_item_widget] screen.
class Userprofilerow1ItemModel {
  Userprofilerow1ItemModel({
    this.lorem,
    this.timesCounter,
    this.id,
  }) {
    lorem = lorem ?? Rx("Gender");
    timesCounter = timesCounter ?? Rx("3 times");
    id = id ?? Rx("");
  }

  Rx<String>? lorem;

  Rx<String>? timesCounter;

  Rx<String>? id;
}
