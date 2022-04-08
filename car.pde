class Car extends GameObject {

  float maxSpeed;
  float fuel;

  Car(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite) {

    super(_position, _velocity, _acceleration, _sprite);

    fuel = 100;
    maxSpeed = 4;
  }
  //vad händer


  void run() {
    render();
    update();
    explode();
    collisionCheck();
  }

  void render() {
    imageMode(CENTER);
    image(sprite, position.x, position.y);
    sprite.resize(200, 100);

    text(round(fuel), 100, 100);
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
    fuel = fuel - sqrt(sq(velocity.x)+sq(velocity.y))*0.05;
    collisionCheck();
  }

  void explode() {
    rect(99,99,99,99);
  }

  void collisionCheck() {

    for (int i = 0; i < currentLvl.traffic1.length; i++) {

      if (abs(currentLvl.traffic1[i].position.x - position.x) < 100 && abs(currentLvl.traffic1[i].position.y - position.y) < 100) {
        explode();
        println("krockat");
      }
    }


    if (abs(currentLvl.fuel1.position.x - position.x) < 100 && abs(currentLvl.fuel1.position.y - position.y) < 100) {

      println("it's aliveeeeee");

      currentLvl.fuel1.position.x = random(70, width);
      currentLvl.fuel1.position.y = random(70, height);

      fuel += 60;
    }
  }
}
