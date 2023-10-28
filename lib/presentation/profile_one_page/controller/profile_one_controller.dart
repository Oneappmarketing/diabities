import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/profile_one_page/models/profile_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileOnePage.
///
/// This class manages the state of the ProfileOnePage, including the
/// current profileOneModelObj
class ProfileOneController extends GetxController {
  ProfileOneController(this.profileOneModelObj);

  TextEditingController timeController = TextEditingController();

  Rx<ProfileOneModel> profileOneModelObj;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    timeController.dispose();
  }
}
