import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/my_reminders_one_dialog/models/my_reminders_one_model.dart';

/// A controller class for the MyRemindersOneDialog.
///
/// This class manages the state of the MyRemindersOneDialog, including the
/// current myRemindersOneModelObj
class MyRemindersOneController extends GetxController {
  Rx<MyRemindersOneModel> myRemindersOneModelObj = MyRemindersOneModel().obs;
}
