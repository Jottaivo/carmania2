PImage vw_image;
PImage maln_image;
PImage fuel_image;
PImage traffic_image;
PImage star_image;




Cloud cloud1;
Car car1;
Fuel fuel1;
Star star1;
Traffic[] traffic1 = new Traffic[12];
Timer timer1;
lvl lvls1;


void setup() {

  timer1 = new Timer (new PVector(500, 200), new PVector(0, 0), new PVector(0, 0), null, 10);

  size (1000, 1000);
  background(0, 0, 0);

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
    traffic1[i] = new Traffic(new PVector(100, 200), new PVector(0, 0), new PVector(0, 0), traffic_image);          //konstruktorn
  }
  
  lvls1 = new lvl(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), traffic_image);
  
}



void draw() {
  background(00, 0, 00);

  for (int i = 0; i < traffic1.length; i++) {
    traffic1[i].run();
  }

  timer1.run();

  cloud1.run();
  car1.run();
  fuel1.run();
  star1.run();
  //  timer1.run();
}
