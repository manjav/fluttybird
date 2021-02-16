import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
class MyGame extends BaseGame with TapDetector {

  MyGame() {
    //   ..x = 100
    //   ..y = 100);
  }

  @override
  Color backgroundColor() => const Color(0xFF00FF00);

  @override
  void onTap() {
  }
  }
