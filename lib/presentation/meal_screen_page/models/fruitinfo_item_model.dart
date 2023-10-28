import '../../../core/app_export.dart';

/// This class is used in the [fruitinfo_item_widget] screen.
class FruitinfoItemModel {
  FruitinfoItemModel({
    this.fruitName,
    this.fruitGL,
    this.id,
  }) {
    fruitName = fruitName ?? Rx("Banana (fresh)");
    fruitGL = fruitGL ?? Rx("3.6 GL");
    id = id ?? Rx("");
  }

  Rx<String>? fruitName;

  Rx<String>? fruitGL;

  Rx<String>? id;
}
