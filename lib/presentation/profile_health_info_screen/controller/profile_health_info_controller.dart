import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/profile_health_info_screen/models/profile_health_info_model.dart';

/// A controller class for the ProfileHealthInfoScreen.
///
/// This class manages the state of the ProfileHealthInfoScreen, including the
/// current profileHealthInfoModelObj
class ProfileHealthInfoController extends GetxController {
  Rx<ProfileHealthInfoModel> profileHealthInfoModelObj =
      ProfileHealthInfoModel().obs;
}
