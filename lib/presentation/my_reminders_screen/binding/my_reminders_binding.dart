import '../controller/my_reminders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyRemindersScreen.
///
/// This class ensures that the MyRemindersController is created when the
/// MyRemindersScreen is first loaded.
class MyRemindersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyRemindersController());
  }
}
