import 'dart:ui';

class ColorConstant {
  static Color red = fromHex('#FF0000');

  static Color green = fromHex('#4BB543');

  static Color whiteA700 = fromHex('#ffffff');
  static Color deep = fromHex("#c55b1f");
  static Color deep400 = fromHex("#a54008");
  static Color deep700 = fromHex("#9b3908");
  static Color deep900 = fromHex("#833100");
  static Color chocolate = fromHex("#8b765b");
  static Color grey = fromHex("#d5d3d6");
  static Color black = fromHex("#080c18");
  static Color pink = fromHex("#a74365");

  static Color orange = fromHex('#cf5919');
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
