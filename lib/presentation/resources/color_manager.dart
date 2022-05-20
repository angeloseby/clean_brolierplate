import 'package:flutter/material.dart';

/// This [ColorManager] class manages all the [Color] used in the App
class ColorManager {
  /// Define the [Color]s used in the app

  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");

  ///[Color] with opacity
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
}

/// This method extends additional functionalities to the [Color] class / library.
/// The below method converts the [hexColorString] to a [Color] type.
extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";

      /// If the [hexColorString] only have length of 6,
      /// this method will add full opacity FF to the begining
      /// of the HexColorCode
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
