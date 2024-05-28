import 'package:flutter/material.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget,
      this.mainAxisAlignment = MainAxisAlignment.center});

  var mainAxisAlignment = MainAxisAlignment.center;
  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.RoundedBorder2:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.CardShadow:
        return ColorConstant.black;
      case ButtonVariant.OutlineGray800:
        return ColorConstant.deep400;
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBluegray300:
        return ColorConstant.deep999;

      default:
        return ColorConstant.deep;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray800_1:
        return BorderSide(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray800:
        return BorderSide(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray300:
        return BorderSide(
          color: ColorConstant.blueGray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.CardShadow:
        return ColorConstant.blueGray300;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      case ButtonShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(15);
      default:
        return BorderRadius.circular(0);
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NunitoMedium14:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.43,
          ),
        );
      case ButtonFontStyle.NunitoSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.43,
          ),
        );
      case ButtonFontStyle.NunitoMedium14Gray800:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.43,
          ),
        );
      case ButtonFontStyle.NunitoMedium14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.43,
          ),
        );
      case ButtonFontStyle.MontserratRomanRegular18:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.22,
          ),
        );
      case ButtonFontStyle.MontserratRomanRegular14:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.22,
          ),
        );
      case ButtonFontStyle.MontserratRomanRegular12:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.22,
          ),
        );

      case ButtonFontStyle.MontserratRomanRegular14Neutre:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.22,
          ),
        );
      case ButtonFontStyle.MontserratRomanRegular12Neutre:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.22,
          ),
        );

      case ButtonFontStyle.NunitoRegular12:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.42,
          ),
        );
      case ButtonFontStyle.NunitoRegular15:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.NunitoRegular152:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.deepBold:
        return TextStyle(
          color: ColorConstant.deep900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.NunitoRegularGrey:
        return TextStyle(
          color: ColorConstant.grey,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          height: getVerticalSize(
            1.00,
          ),
        );

      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.41,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder2,
  RoundedBorder6,
  RoundedBorder8,
  RoundedBorder10,
  RoundedBorder15
}

enum ButtonPadding {
  PaddingAll13,
  PaddingAll5,
  PaddingAll10,
  RoundedBorder2,
}

enum ButtonVariant {
  VioleatJTC,
  CardShadow,
  OutlineGray800_1,
  OutlineGray800,
  White,
  OutlineBluegray300,
  FillBluegray30033,
}

enum ButtonFontStyle {
  NunitoSemiBold17,
  NunitoMedium14,
  NunitoSemiBold14,
  NunitoMedium14Gray800,
  NunitoMedium14WhiteA700,
  MontserratRomanRegular18,
  NunitoRegular12,
  NunitoRegular15,
  NunitoRegular152,
  MontserratRomanRegular14,
  MontserratRomanRegular14Neutre,
  MontserratRomanRegular12,
  MontserratRomanRegular12Neutre,
  deepBold,
  NunitoRegularGrey
}
