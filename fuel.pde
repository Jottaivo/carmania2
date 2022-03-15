class Fuel extends GameObject {

  Fuel(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);
  }

  void run() {
    render();
    update();
  }

  void render() {
    imageMode(CENTER);
    image(fuel_image, position.x, position.y);
    fuel_image.resize(100, 100);
  }


  void update() {
    if (frameCount%360 == 0) {
      position.x = random(70, width);
      position.y = random(70, height);
    }
  }
}
