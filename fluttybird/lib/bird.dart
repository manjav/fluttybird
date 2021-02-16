import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

enum State { start, jumping, falling, end }

class Bird extends SpriteComponent {
  State state = State.end;
  double time = 0;

  double from;
  double to;
  double startTime;
  double duration;

  // creates a component that renders the crate.png sprite, with size 16 x 16
  Bird(Image image) : super.fromSprite(Vector2(72.0, 48.0), Sprite(image)) {
    // start();
  }

  void start() {
    x = 100;
    y = 200;
    state = State.start;
  }

  void jump() {
    from = y;
    to = y - 150;
    duration = 0.5;
    startTime = time;
    // print("jump $y $from $to");
    state = State.jumping;
  }

  void fall() {
    from = y;
    to = 500;
    startTime = time;
    duration = (to - from) / 700;
    state = State.falling;
  }

  void end() {
    state = State.end;
  }

  @override
  void update(double t) {
    super.update(t);
    time += t;
  }
  }
  }
  }
