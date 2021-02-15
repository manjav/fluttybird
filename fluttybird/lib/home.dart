class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum GameState { start, jumping, falling, end }

class _HomePageState extends State<HomePage> {
  GameState state = GameState.end;

  void start() {
    state = GameState.start;
  }
  void jump() {
    if (state == GameState.end) start();
    state = GameState.jumping;
  }

  void fall() {
    state = GameState.falling;
  }

  void end() {
    state = GameState.end;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('y $state')),
        body: GestureDetector(
          onTap: jump,
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                color: Colors.green,
              )),
              Positioned(
                child: Container(
                  // transform: new Matrix4.rotationZ(birdAngle),
                  child: MyBird(),
                ),
                left: 75,
                top: birdY,
              )
            ],
          ),
        ));
  }
}

class MyBird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60, height: 60, child: Image.asset("assets/images/bird.png"));
  }
}
