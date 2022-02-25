class Cloud extends GameObject {


  Cloud (Pvector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    Super(_position, _velocity, _acceleration, _sprite);
  }

  void run() {
    update();
    render();
  }

  void render() {

    image("maln2.png", position.x, position.y, 50, 50);
  }

  void update() {

    // Check for borders
    if (position.x > width) {
      velocity.x = velocity.x*(-1);
    }
    if (position.x < 0) {
      velocity.x = velocity.x*(-1);
    }
    if (position.y < 0) {
      velocity.y = velocity.y*(-1);
    }
    if (position.y > height) {
      velocity.y = velocity.y*(-1);
    }

    if ((frameCount % 240) == 0) {

      velocity.x = random(0, maxspeed);
      velocity.y = random(0, maxspeed);
    }

    position.add(velocity);
  }
}
