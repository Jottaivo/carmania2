class Car extends GameObject {

  float maxSpeed;

  Car(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);
  }

  void run() {
    render();
    update();
  }

  void render() {
    imageMode(CENTER);
    image(vw_image, position.x, position.y);
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
      Car.velocity.y = Car.velocity.y - 0.5;
    }
    if (key == 's') {
      Car.velocity.y = Car.velocity.y + 0.5;
    }
    if (key == 'a') {
      Car.velocit.x = Car.velocity.x - 0.5;
    }
    if (key == 'd') {
      Car.velocity.x = Car.velocity.x + 0.5;
    }
    
  }
}
