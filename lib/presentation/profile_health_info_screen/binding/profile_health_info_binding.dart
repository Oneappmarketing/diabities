import '../controller/profile_health_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileHealthInfoScreen.
///
/// This class ensures that the ProfileHealthInfoController is created when the
/// ProfileHealthInfoScreen is first loaded.
class ProfileHealthInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileHealthInfoController());
  }
}
