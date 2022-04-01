class Lvl {
  
  int level

  PImage vw_image;
  PImage maln_image;
  PImage fuel_image;
  PImage traffic_image;
  PImage star_image;

  Cloud cloud1;
  Car car1;
  Fuel fuel1;
  Star star1;
  Traffic[] traffic1;
  Timer timer1;
  
  int numTraffic;
  float trafficSpeed;

  Lvl (int _level) {
    
    level = _level;
    
    numTraffic = 12 + (i-1)*6;
    trafficSpeed = 4 + (i-1)*2;
    
    
    traffic1 =  = new Traffic[numTraffic];

    timer1 = new Timer (new PVector(500, 200), new PVector(0, 0), new PVector(0, 0), null, 1);

    maln_image = loadImage("maln2.png");
    cloud1 = new Cloud(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), maln_image);

    vw_image = loadImage("vw.png");
    car1 = new Car(new PVector(500, 500), new PVector(0, 0), new PVector(0, 0), vw_image);

    fuel_image = loadImage("jerry.png");
    fuel1 = new Fuel(new PVector(100, 200), new PVector(0, 0), new PVector(0, 0), fuel_image);

    star_image = loadImage("star.png");
    star1 = new Star(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), star_image);

    traffic_image = loadImage("Traffic.png");
    for (int i = 0; i < traffic1.length; i++) {
      traffic1[i] = new Traffic(new PVector(100, 200), new PVector(0, 0), new PVector(0, 0), traffic_image, trafficSpeed);          //konstruktorn
    }
  }

  void run() {
    background(0);

    for (int i = 0; i < traffic1.length; i++) {
      traffic1[i].run();
    }

    timer1.run();

    cloud1.run();
    car1.run();
    fuel1.run();
    star1.run();
  }
//vad händer

  void draw_menu() {
    // if (key == 'm') {
    background(255);
    textSize(20);
    text("press 1 to play lvl 1 etc", 250, 500);
    // }
  }

  void draw_lvl1() {
    if (key =='1') {
      fill(255, 2, 2);
      textSize(50);
      text("tja", 300, 300);
    }
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
