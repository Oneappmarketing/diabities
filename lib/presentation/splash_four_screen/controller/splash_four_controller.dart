import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/splash_four_screen/models/splash_four_model.dart';

/// A controller class for the SplashFourScreen.
///
/// This class manages the state of the SplashFourScreen, including the
/// current splashFourModelObj
class SplashFourController extends GetxController {
  Rx<SplashFourModel> splashFourModelObj = SplashFourModel().obs;
}
