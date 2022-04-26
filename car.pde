class Car extends GameObject {
  boolean onStar;
  float maxSpeed;
  float fuel;
  PImage sprite2;

  Car(PVector _position, PVector _velocity, PVector _acceleration, PImage _sprite, PImage _sprite2) {

    super(_position, _velocity, _acceleration, _sprite);
    sprite2 = _sprite2;
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
    image(explosion_image, position.x, position.y);
  }

  void collisionCheck() {

    for (int i = 0; i < currentLvl.traffic1.length; i++) {

      if (abs(currentLvl.traffic1[i].position.x - position.x) < 20 && abs(currentLvl.traffic1[i].position.y - position.y) < 20) {
        explode();
      }
    }

    for (int i = 0; i < currentLvl.traffic1.length; i++) {

      if (abs(currentLvl.traffic1[i].position.x - position.x) < 100 && abs(currentLvl.traffic1[i].position.y - position.y) < 100) {
        explode();
        println("bil krock");
      }
    }


    if (abs(currentLvl.fuel1.position.x - position.x) < 100 && abs(currentLvl.fuel1.position.y - position.y) < 100) {

      println("soppa torsk ksk idk");

      currentLvl.fuel1.position.x = random(70, width);
      currentLvl.fuel1.position.y = random(70, height);

      fuel += 60;
    }


    if (abs(currentLvl.star1.position.x - position.x) < 70 && abs(currentLvl.star1.position.y - position.y) < 70 && !onStar) {
      onStar = true;
      currentLvl.points += 1 ;
      currentLvl.star1.position.x = random(70, width);
      currentLvl.star1.position.y = random(70, height);
    } else if (abs(currentLvl.star1.position.x - position.x) >= 70 || abs(currentLvl.star1.position.y - position.y) >= 70) {
      onStar = false;
    }
  }
}
