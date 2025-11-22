Star[] nightSky = new Star[1000];
Spaceship Bob;
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
Asteroid someThingy;
void setup() {
  for (int i = 0; i <= 10; i++) {
    someThingy = new Asteroid();
    theList.add(someThingy);
  }
  size(1000, 500);
  Bob = new Spaceship();
  size(1000, 500);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}
void draw() {
  background(0, 0, 0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      Bob.turn(-10);
    }
    if (key == 'd' || key == 'D') {
      Bob.turn(10);
    }
    if (key == 'w' || key == 'W') {
      Bob.accelerate(0.1);
    }
    if (key == 's' || key == 'S') {
      Bob.accelerate(-0.1);
    }
    if (key == 'q' || key == 'Q') {
      Bob.HyperSpace();
    }
  }
  Bob.move();
  Bob.show();
  for (int i = 0; i < theList.size(); i++) {
    theList.get(i).move();
    theList.get(i).show();
    if (dist((float)theList.get(i).myCenterX, (float)theList.get(i).myCenterY, (float)Bob.myCenterX, (float)Bob.myCenterY) <= 20){
      theList.remove(i);
    }
  }
  if (theList.size() < 1) {
    noLoop();
  }
}
