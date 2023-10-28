import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/home_menu_draweritem/models/home_menu_model.dart';

/// A controller class for the HomeMenuDraweritem.
///
/// This class manages the state of the HomeMenuDraweritem, including the
/// current homeMenuModelObj
class HomeMenuController extends GetxController {
  Rx<HomeMenuModel> homeMenuModelObj = HomeMenuModel().obs;
}
