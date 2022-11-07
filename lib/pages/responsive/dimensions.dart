import 'package:flutter/widgets.dart';

class Dimensions {
  double screenHeith(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  EDimensionScreen getScreen(BuildContext context) {
    if (screenWidth(context) <= EDimensionScreen.mobile.size) {
      return EDimensionScreen.mobile;
    } else if (screenWidth(context) <= EDimensionScreen.tablet.size) {
      return EDimensionScreen.tablet;
    }
    return EDimensionScreen.desktop;
  }

  bool isMobile(BuildContext context) {
    EDimensionScreen screenSize = getScreen(context);
    if (screenSize == EDimensionScreen.mobile || screenSize == EDimensionScreen.tablet) {
      return true;
    }
    return false;
  }

  bool isDesktop(BuildContext context) {
    EDimensionScreen screenSize = getScreen(context);
    if (screenSize == EDimensionScreen.desktop) {
      return true;
    }
    return false;
  }
}

enum EDimensionScreen {
  mobile,
  tablet,
  desktop;
}

extension DimensionSizes on EDimensionScreen {
  double get size {
    switch (this) {
      case EDimensionScreen.mobile:
        return 600.0;
      case EDimensionScreen.tablet:
        return 900.0;
      case EDimensionScreen.desktop:
        return double.infinity;
    }
  }
}
