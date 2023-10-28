import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/settings_screen/models/settings_model.dart';

/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
