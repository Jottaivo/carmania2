class Traffic extends GameObject {

  float spawn;

  Traffic(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);
    
    
  }

  void run() {
    render();
    update();
  }

  void spawn() {

    position.x = random(10, 1000);
    position.y = random(10, 1000);
  }


  void render() {
    imageMode(CENTER);
    image(traffic_image, position.x, position.y);
    traffic_image.resize(500, 100);
  }


  void update() {
  }
}
