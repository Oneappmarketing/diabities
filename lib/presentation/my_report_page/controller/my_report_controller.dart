import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/my_report_page/models/my_report_model.dart';

/// A controller class for the MyReportPage.
///
/// This class manages the state of the MyReportPage, including the
/// current myReportModelObj
class MyReportController extends GetxController {
  MyReportController(this.myReportModelObj);

  Rx<MyReportModel> myReportModelObj;
}
