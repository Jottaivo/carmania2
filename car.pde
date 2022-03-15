class Car extends GameObject {

  float maxSpeed;

  Car(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);

    maxSpeed = 4;
  }

  void run() {
    render();
    update();
  }

  void render() {
    imageMode(CENTER);
    image(vw_image, position.x, position.y);
    vw_image.resize(200,100);
    }

  void update() {

    // keep speed under maxspeed
    if (velocity.x > maxSpeed) {
      velocity.x = maxSpeed;
    }
    if (velocity.x < (-1) * maxSpeed) {
      velocity.x = (-1) * maxSpeed;
    }
    if (velocity.y > maxSpeed) {
      velocity.y = maxSpeed;
    }
    if (velocity.y < (-1) * maxSpeed) {
      velocity.y = (-1) * maxSpeed;
    }

    // Check for borders
    if (position.x > width) {
      position.x = width;
    }
    if (position.x < 0) {
      position.x = 0;
    }
    if (position.y < 0) {
      position.y = 0;
    }
    if (position.y > height) {
      position.y = height;
    }

    //här jag ändrat senaste nedanför

    if (keyPressed) {
      if (key == 'w') {
        velocity.y = velocity.y - 0.5;
      }
      if (key == 's') {
        velocity.y = velocity.y + 0.5;
      }
      if (key == 'a') {
        velocity.x = velocity.x - 0.5;
      }
      if (key == 'd') {
        velocity.x = velocity.x + 0.5;
      }
    }
    
    position.add(velocity);
    
  }
}
