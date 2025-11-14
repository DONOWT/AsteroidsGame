Star[] nightSky = new Star[10000];
Spaceship Bob;
void setup(){
  size(1000,500);
  Bob = new Spaceship();
  size(1000,500);
  for (int i = 0; i < nightSky.length; i++) { 
    nightSky[i] = new Star();
  }
}
void draw(){
  background(0,0,0);
  for (int i = 0; i < nightSky.length; i++) { 
    nightSky[i].show();
  }
  if (keyPressed){
    if (key == 'a' || key == 'A') {Bob.turn(-10);}
    if (key == 'd' || key == 'D') {Bob.turn(10);}
    if (key == 'w' || key == 'W') {Bob.accelerate(0.1);}
    if (key == 's' || key == 'S') {Bob.accelerate(-0.1);}
    if (key == 'q' || key == 'Q') {Bob.HyperSpace();}
  }
  Bob.move();
  Bob.show();
}
