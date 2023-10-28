import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/my_report_tab_container_screen/models/my_report_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyReportTabContainerScreen.
///
/// This class manages the state of the MyReportTabContainerScreen, including the
/// current myReportTabContainerModelObj
class MyReportTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MyReportTabContainerModel> myReportTabContainerModelObj =
      MyReportTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
