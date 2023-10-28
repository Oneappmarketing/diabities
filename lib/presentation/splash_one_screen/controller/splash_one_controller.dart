import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/splash_one_screen/models/splash_one_model.dart';

/// A controller class for the SplashOneScreen.
///
/// This class manages the state of the SplashOneScreen, including the
/// current splashOneModelObj
class SplashOneController extends GetxController {
  Rx<SplashOneModel> splashOneModelObj = SplashOneModel().obs;
}
