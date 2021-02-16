import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Bird extends SpriteComponent {
  // creates a component that renders the crate.png sprite, with size 16 x 16
  Bird(Image image) : super.fromSprite(Vector2(72.0, 48.0), Sprite(image)) {
    // start();
  }

  @override
  void update(double t) {
    super.update(t);
  }
