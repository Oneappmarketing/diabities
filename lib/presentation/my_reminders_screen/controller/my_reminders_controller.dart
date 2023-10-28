import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/my_reminders_screen/models/my_reminders_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyRemindersScreen.
///
/// This class manages the state of the MyRemindersScreen, including the
/// current myRemindersModelObj
class MyRemindersController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<MyRemindersModel> myRemindersModelObj = MyRemindersModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }
}
