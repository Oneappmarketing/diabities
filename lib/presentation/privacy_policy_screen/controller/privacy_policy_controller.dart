import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/privacy_policy_screen/models/privacy_policy_model.dart';

/// A controller class for the PrivacyPolicyScreen.
///
/// This class manages the state of the PrivacyPolicyScreen, including the
/// current privacyPolicyModelObj
class PrivacyPolicyController extends GetxController {
  Rx<PrivacyPolicyModel> privacyPolicyModelObj = PrivacyPolicyModel().obs;
}
