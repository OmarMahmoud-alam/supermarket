import 'package:flutter/material.dart';
import 'package:supermarket/theme/main_colors.dart';
import 'package:supermarket/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class TextStyles {
  static const TextStyle textmedium20 = TextStyle(
    fontFamily: 'Poppin',
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: TColor.headertext1,
  );

  static TextStyle textregular14 = TextStyle(
    fontFamily: 'Poppin',
    fontSize: 14,
    fontWeight: FontWeight.w100,
    color: TColor.headertext1.withOpacity(0.7),
  );
  static const TextStyle textbold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

class CustomTextStyles {
  // Body text style

  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumYellow900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow900,
      );
  // Label text style
  static get labelLargeLightgreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreenA700,
      );
  // Title text style
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
