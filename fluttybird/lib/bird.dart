import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

enum State { start, jumping, falling, end }

class Bird extends SpriteComponent {
  State state = State.end;
  // creates a component that renders the crate.png sprite, with size 16 x 16
  Bird(Image image) : super.fromSprite(Vector2(72.0, 48.0), Sprite(image)) {
    // start();
  }

  void start() {
    state = State.start;
  }

  void jump() {
    state = State.jumping;
  }

  void fall() {
  }

  void end() {
  }
  @override
  void update(double t) {
    super.update(t);
  }
  }
