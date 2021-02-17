import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:fluttybird/bird.dart';

class MyGame extends BaseGame with TapDetector {

  Bird bird;

  MyGame() {
    //   ..x = 100
    //   ..y = 100);
    addImage();
  }

  Future<void> addImage() async {
    // other loads omitted
    await images.load('bird.png');
    bird = Bird(images.fromCache('bird.png'));
    add(bird);
  }

  @override
  Color backgroundColor() => const Color(0xFF00FF00);

  @override
  void onTap() {
    bird.jump();
    // print(details.globalPosition);
    // bird.x = details.localPosition.dx;
    // bird.y = details.localPosition.dy;
  }
}
