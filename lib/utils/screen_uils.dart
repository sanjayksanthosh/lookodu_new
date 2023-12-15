import 'package:flutter/widgets.dart';

class ScreenUtil {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenDensity(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }
}

class ResponsiveUtil {
  static double responsiveWidth(BuildContext context, double percentage) {
    return ScreenUtil.screenWidth(context) * (percentage / 100.0);
  }

  static double responsiveHeight(BuildContext context, double percentage) {
    return ScreenUtil.screenHeight(context) * (percentage / 100.0);
  }
}
