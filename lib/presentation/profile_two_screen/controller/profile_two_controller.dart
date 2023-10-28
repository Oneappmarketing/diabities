import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/profile_two_screen/models/profile_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileTwoScreen.
///
/// This class manages the state of the ProfileTwoScreen, including the
/// current profileTwoModelObj
class ProfileTwoController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  Rx<ProfileTwoModel> profileTwoModelObj = ProfileTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
  }
}
