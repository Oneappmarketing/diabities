import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/explore_one_bottomsheet/models/explore_one_model.dart';

/// A controller class for the ExploreOneBottomsheet.
///
/// This class manages the state of the ExploreOneBottomsheet, including the
/// current exploreOneModelObj
class ExploreOneController extends GetxController {
  Rx<ExploreOneModel> exploreOneModelObj = ExploreOneModel().obs;
}
