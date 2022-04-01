class lvl extends GameObject {

  int state;
  int mode;
  int levels;

  lvl (PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {
    super(_position, _velocity, _acceleration, _sprite);
  }

  void run() {
    render();
    update();
    draw_menu();
  }

  void render() {
    switch(state) {
    case 0:
      draw_menu();
      break;
    case 1:
      draw_lvl1();
      break;
    case 2:
      draw_lvl2();
      break;
    case 3:
      draw_lvl3();
      break;
    case 4:
      draw_endScreen();
      break;
    }
  }

  void draw_menu() {
    if (key == 'q') {
      
    

    text("hello world", 500, 500);
    background(255);
    }
  }

  void draw_lvl1() {
    text("tja", 300, 300);
  }

  void draw_lvl2() {
    text("nåb", 200, 200);
  }
  void draw_lvl3() {
    text("såpa", 200, 200);
  }

  void draw_endScreen() {
    text("GameOver", 500, 500);
  }

  void begin_stage(int stage) {
    switch(stage) {
    case 1:
      setup_stage_one();
      state = 1;
      return;
    case 2:
      setup_stage_two();
      state = 1;
      return;
    case 3:
      setup_stage_three();
      state = 1;
      return;
    case 4:
      setup_stage_four();
      state = 1;
      return;
    case 5:
      setup_stage_five();
      state = 1;
      return;
    }
  }

  void setup_stage_one() { //meny antar att det är här jag ska skriva meny koden
  }
  void setup_stage_two() { //lvl 1 skriva lvl1 koden antar jag
  }
  void setup_stage_three() { //lvl 2 skriva lvl1 koden antar jag
  }
  void setup_stage_four() { //lvl 3 skriva lvl1 koden antar jag
  }
  void setup_stage_five() { // skriva gameOver koden
  }




  void update() {
  }

  void reset() {
    state = 0;
    mode = 1;
  }
}
