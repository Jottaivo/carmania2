class Car extends GameObject {

  float maxSpeed;
  float fuel;

  Car(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);

    maxSpeed = 4;
    fuel = 100;
  }

  void run() {
    render();
    update();
  }

  void render() {
    imageMode(CENTER);
    sprite.resize(200, 100);
    image(sprite, position.x, position.y);

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

      collisionCheck();
    }

    position.add(velocity) {

      // update position
      if (fuel > 0) {
        xpos = xpos + xspeed;
        ypos = ypos + yspeed;

        // fuel consumtion
        fuel = fuel - sqrt(sq(xspeed)+sq(yspeed))*0.05);
      }
    }

    void collisionCheck() {

      //if (hp < -1 ) {
      //  rect(100, 100, 1000, 1000);
      //}
    }
  }
