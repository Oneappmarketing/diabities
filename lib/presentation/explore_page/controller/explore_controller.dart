import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/presentation/explore_page/models/explore_model.dart';

/// A controller class for the ExplorePage.
///
/// This class manages the state of the ExplorePage, including the
/// current exploreModelObj
class ExploreController extends GetxController {
  ExploreController(this.exploreModelObj);

  Rx<ExploreModel> exploreModelObj;
}
