import '../controller/my_report_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyReportTabContainerScreen.
///
/// This class ensures that the MyReportTabContainerController is created when the
/// MyReportTabContainerScreen is first loaded.
class MyReportTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyReportTabContainerController());
  }
}
