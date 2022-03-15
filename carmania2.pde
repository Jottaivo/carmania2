PImage vw_image;
PImage maln_image;
PImage fuel_image;
PImage traffic_image;

Cloud cloud1;
Car car1;
Fuel fuel1;
Traffic traffic1;


void setup() {

  size (1000, 1000);
  background(0, 0, 0);

  maln_image = loadImage("maln2.png");
  cloud1 = new Cloud(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), maln_image);

  vw_image = loadImage("vw.png");
  car1 = new Car(new PVector(500, 500), new PVector(0, 0), new PVector(0, 0), vw_image);

  fuel_image = loadImage("jerry.png");
  fuel1 = new Fuel(new PVector(100, 200), new PVector(0, 0), new PVector(0, 0), fuel_image);

  traffic_image = loadImage("ferrari3.png");
  traffic1 = new Traffic(new PVector(100, 100), new PVector(0, 0), new PVector(0, 0), traffic_image);
}



void draw() {
  background(00, 0, 00);
  cloud1.run();
  car1.run();
  fuel1.run();
  traffic1.run();
}
