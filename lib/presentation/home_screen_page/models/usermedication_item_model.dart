import '../../../core/app_export.dart';

/// This class is used in the [usermedication_item_widget] screen.
class UsermedicationItemModel {
  UsermedicationItemModel({
    this.userMedicationT,
    this.userGestational,
    this.radioGroup,
    this.id,
  }) {
    userMedicationT = userMedicationT ?? Rx("Pills");
    userGestational = userGestational ?? Rx("Gestational");
    id = id ?? Rx("");
  }

  Rx<String>? userMedicationT;

  Rx<String>? userGestational;

  Rx<String> radioGroup = Rx("");

  Rx<String>? id;
}
