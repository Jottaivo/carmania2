import processing.sound.*;
SoundFile carCrash;
SoundFile lvlUp;

Lvl currentLvl;

String gameState;

int time;

void setup() {

  size (1000, 1000);
  background(0, 0, 0);

  currentLvl = new Lvl(1);

  gameState = "RUN";
  
  carCrash = new SoundFile(this, "carCrash.wav");
  lvlUp = new SoundFile(this, "lvlUp.wav");
}


void draw() {

  switch (gameState) {

  case "STARTUP":
    
   
    break;


  case "RUN":
    currentLvl.run();

    break;


  case "NEW LEVEL":
    background(0);
    
    if(frameCount - time > 3*frameRate){
     int lvl = currentLvl.level;
     currentLvl = new Lvl(lvl + 1);
     gameState = "RUN"; 
    }
    
    break;


  case "GAME OVER":


    break;
  }
}
