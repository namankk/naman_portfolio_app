import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class Utils {
  static final _instance = Utils.name();
  Size? _screenSize;
  double _commonHorizontalPadding=0.0;

  Utils.name();

  factory Utils() {
    return _instance;
  }

  double get commonHorizontalPadding => _commonHorizontalPadding;

  set commonHorizontalPadding(double value) {
    _commonHorizontalPadding = value;
  }

  Size get screenSize => _screenSize!;

  set screenSize(Size value) {
    _screenSize = value;
  }
  double getDefaultPadding(BuildContext context){
    return MediaQuery.sizeOf(context).width/100*10;
  }
}
