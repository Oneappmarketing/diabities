import '../controller/splash_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashFourScreen.
///
/// This class ensures that the SplashFourController is created when the
/// SplashFourScreen is first loaded.
class SplashFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashFourController());
  }
}
