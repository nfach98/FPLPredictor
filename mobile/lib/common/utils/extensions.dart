import 'package:flutter/material.dart';

// Media Query extensions
extension Media on BuildContext {
  MediaQueryData get media {
    return MediaQuery.of(this);
  }

  double get statusBarHeight {
    return media.padding.top;
  }

  double get screenWidth {
    return media.size.width;
  }

  double get screenHeight {
    return media.size.height;
  }

  double get finalHeight {
    return media.size.height - statusBarHeight;
  }
}
