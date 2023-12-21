import 'package:flutter/material.dart';
import 'package:supermarket/theme/main_colors.dart';

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
  static const TextStyle textsemibold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: TColor.headertext1,
  );
  static const TextStyle textbold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: TColor.headertext1,
  );
}
