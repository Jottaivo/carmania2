class Lvl {

  int i;
  int points;
  int level;

  int LVL_TIME = 10;

  PImage vw_image;
  PImage maln_image;
  PImage fuel_image;
  PImage traffic_image;
  PImage star_image;
  PImage explosion_image;

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

    numTraffic = 3 + (level-1)*6;
    trafficSpeed = 4 + (level-1)*2;

    traffic1 = new Traffic[numTraffic];

    timer1 = new Timer (new PVector(500, 200), new PVector(0, 0), new PVector(0, 0), null, 1);

    maln_image = loadImage("maln2.png");
    cloud1 = new Cloud(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), maln_image);

    vw_image = loadImage("vw.png");
    explosion_image = loadImage("explosion.png");
    car1 = new Car(new PVector(500, 500), new PVector(0, 0), new PVector(0, 0), vw_image, explosion_image);

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

    points();
    timer1.run();
    fuel1.run();
    star1.run();

    for (int i = 0; i < traffic1.length; i++) {
      traffic1[i].run();
    }

    car1.run();
    cloud1.run();

    text(level, 20, 20);

    if (timer1.getTime() > LVL_TIME) {
      gameState = "NEW LEVEL";
      time = frameCount;
    }
  }
  
  void points(){
    fill(255);
    text(points,400,300);
  }
}
