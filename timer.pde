class Timer extends GameObject {

  private float time;

  Timer (PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite, float set) {
    super(_position, _velocity, _acceleration, _sprite);
    time = set;
  }
  //vad händer


  float getTime() {  //ger den tiden för stunden
    return(time);
  }

  void setTime(float set) {   //sätter tillfälliga variabeln 10-60seconds
    time = set;
  }

  void countUp() {   //uppdaterar tiden måste kallas i render för funka
    time += 1/frameRate;
  }

  void countDown() {      //uppdaterar tiden måste kallas i render för funka
    time -= 1/frameRate;
  }




  void run() {
    update();
    render();
  }

  void render() {
    fill(255, 255, 0);
    textSize(100);
    text(round(getTime()), 500, 100);
  }


  void update() {
    countUp();
  }
}
