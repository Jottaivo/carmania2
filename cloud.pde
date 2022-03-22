class Cloud extends GameObject {

  float maxSpeed;

  Cloud(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);

    sprite.resize(700, 200);

    maxSpeed = 4;
  }

  void run() {
    update();
    render();
  }

  void render() {
    imageMode(CENTER);
    image(sprite, position.x, position.y);
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

      println("framecount!");
      velocity.x = random(0, maxSpeed);
      velocity.y = random(0, maxSpeed);
    }

    position.add(velocity);
  }
}
