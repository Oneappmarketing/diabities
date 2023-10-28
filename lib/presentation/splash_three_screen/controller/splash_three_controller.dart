import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/splash_three_screen/models/splash_three_model.dart';

/// A controller class for the SplashThreeScreen.
///
/// This class manages the state of the SplashThreeScreen, including the
/// current splashThreeModelObj
class SplashThreeController extends GetxController {
  Rx<SplashThreeModel> splashThreeModelObj = SplashThreeModel().obs;
}
