import 'package:flutter/material.dart';
import 'package:flutter_starter_project/ext/num_x.dart';
import 'package:flutter_starter_project/utils/sp/sp_utils.dart';
import 'font_constants.dart';


class FontStyles {
  static getDefaultFontStyle({
    double fontSize = 15.0,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: fontSize.fontSize,
      fontFamily: _getDefaultFontFamily(),
      color: color,
      fontWeight: fontWeight,
    );
  }

  static String _getDefaultFontFamily() {
    // TODO add other languages fonts
    switch (SpUtils.getLangCode()) {
      case "en":
        return FontConstant.EN_DANCING;
      case "bn":
        return FontConstant.BN_SIYAM;
      default:
        return FontConstant.EN_DANCING;
    }
  }
}
