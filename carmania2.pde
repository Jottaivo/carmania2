Lvl lvls1;

void setup() {

  size (1000, 1000);
  background(0, 0, 0);

  lvls1 = new Lvl(1);
}

//jag vet inte vad som händer
 
void draw() {

  lvls1.run();
  //  timer1.run();
}

void update() {

  if (timer1.time < 10) {
    lvls1.draw_menu();
  }
}
