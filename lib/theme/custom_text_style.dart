import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeAirbnbCerealApp =>
      theme.textTheme.bodyLarge!.airbnbCerealApp;
  static get bodyLargeAirbnbCerealAppBlack900 =>
      theme.textTheme.bodyLarge!.airbnbCerealApp.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeAirbnbCerealAppBlack900_1 =>
      theme.textTheme.bodyLarge!.airbnbCerealApp.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeAirbnbCerealAppOnError =>
      theme.textTheme.bodyLarge!.airbnbCerealApp.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 18.fSize,
      );
  static get bodyLargeAirbnbCerealAppOnError_1 =>
      theme.textTheme.bodyLarge!.airbnbCerealApp.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeAirbnbCerealAppRed400 =>
      theme.textTheme.bodyLarge!.airbnbCerealApp.copyWith(
        color: appTheme.red400,
      );
  static get bodyLargeAirbnbCerealApp_1 =>
      theme.textTheme.bodyLarge!.airbnbCerealApp;
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargeErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargeOnError_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineLargeAirbnbCerealAppPrimary =>
      theme.textTheme.headlineLarge!.airbnbCerealApp.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeAirbnbCerealAppOnPrimaryContainer =>
      theme.textTheme.titleLarge!.airbnbCerealApp.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get ceraPro {
    return copyWith(
      fontFamily: 'Cera Pro',
    );
  }

  TextStyle get airbnbCerealApp {
    return copyWith(
      fontFamily: 'Airbnb Cereal App',
    );
  }
}
