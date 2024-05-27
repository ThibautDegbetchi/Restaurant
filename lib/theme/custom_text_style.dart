import 'package:flutter/material.dart';
import 'package:restaurant/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeff2b2b2b => theme.textTheme.labelLarge!.copyWith(
        color: Color(0xff3B3BEC),
      );
  static get labelLargeffafafaf => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFAFAFAF),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
