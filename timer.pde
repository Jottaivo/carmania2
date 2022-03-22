class Timer extends GameObject {

  int time;

  Timer (PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {
    super(_position, _velocity, _acceleration, _sprite);
    time = 0;
  }


  void run() {
    update();
    render();
    timeReset();
  }

  void render() {

    text(time, 300, 300);
    textSize(100);
  }


  void update() {

    if (frameCount%frameRate == 0) {
      time++;
    }
  }

  void timeReset() {

    time = 0;
  }
}
