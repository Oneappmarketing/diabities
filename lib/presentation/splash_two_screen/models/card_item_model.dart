import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.typeCounter,
    this.id,
  }) {
    typeCounter = typeCounter ?? Rx("Type 1");
    id = id ?? Rx("");
  }

  Rx<String>? typeCounter;

  Rx<String>? id;
}
