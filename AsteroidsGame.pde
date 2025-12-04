Star[] nightSky = new Star[1000];
Spaceship Bob;
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
Asteroid someThingy;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Bullet someBullet;
void setup() {
  size(1000, 500);
  textAlign(CENTER);
  textSize(24);
  if (bullets.size() >= 0) {
    for (int i = 0; i < bullets.size()-1; i++) {
      someBullet = new Bullet();
      bullets.add(someBullet);
    }
  }
  for (int i = 0; i < 20; i++) {
    someThingy = new Asteroid();
    theList.add(someThingy);
  }
  Bob = new Spaceship();
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
    if (key == 32) {
      Bullet someBullet = new Bullet();
      bullets.add(someBullet);
    }
  }
  if (Bob.myXspeed == 0 && Bob.myYspeed == 0) {
    Bob.myColor = 0;
  } else {
    Bob.myColor = 255;
  }
  Bob.move();
  Bob.show();
  for (int i = 0; i < theList.size(); i++) {
    theList.get(i).move();
    theList.get(i).show();
  }
  if (bullets.size() > 0) {
    for (int a = bullets.size()-1; a >= 0; a--) {
      for (int i = theList.size()-1; i >= 0; i--) {
        if (dist((float)theList.get(i).myCenterX, (float)theList.get(i).myCenterY, (float)bullets.get(a).myCenterX, (float)bullets.get(a).myCenterY) <= 20){
          theList.remove(i);
          bullets.remove(a);
          break;
        } 
      }
    }
  }
  for (int i = theList.size()-1; i >= 0; i--) {
    if (dist((float)theList.get(i).myCenterX, (float)theList.get(i).myCenterY, (float)Bob.myCenterX, (float)Bob.myCenterY) <= 30){
      noLoop();
    }
  }
  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).move();
    bullets.get(i).show();
  }
  if (theList.size() <= 0) {noLoop();}
  text(theList.size(), (float)Bob.myCenterX, (float)Bob.myCenterY - 30);
}
