import '../../../core/app_export.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [splash_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SplashTwoModel {
  Rx<List<CardItemModel>> cardItemList =
      Rx(List.generate(2, (index) => CardItemModel()));
}
