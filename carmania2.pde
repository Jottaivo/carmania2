PImage vw_image;
PImage maln_image;

Cloud cloud1;
Car car1;


void setup() {

  size (1000, 1000);
  background(100, 0, 100);
  
  maln_image = loadImage("maln2.png");
  cloud1 = new Cloud(new PVector(100, 100), new PVector(2, 2), new PVector(0, 0), maln_image);
  
  vw_image = loadImage("vw.png");
  car1 = new Car(new PVector(500, 500), new PVector(2, 2), new PVector(0, 0), vw_image);
}



void draw() {
  background(100, 0, 100);
  cloud1.run();
  car1.run();
}
