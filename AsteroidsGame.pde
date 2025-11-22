Star[] nightSky = new Star[1000];
Spaceship Bob;
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
Asteroid someThingy;
void setup() {
  size(1000, 500);  
  for (int i = 0; i <= 10; i++) {
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
class Asteroid extends Floater {
  double orbit = (double)(Math.random()*2)-1;
  Asteroid() {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(myCenterX + (Math.cos(0)*(Math.random()*10+15)));
    yCorners[0] = (int)(myCenterY);
    xCorners[1] = (int)(myCenterX + (Math.cos(PI/4)*(Math.random()*10+15)));
    yCorners[1] = (int)(myCenterY + (Math.sin(PI/4)*(Math.random()*10+15)));
    xCorners[2] = (int)(myCenterX);
    yCorners[2] = (int)(myCenterY + (Math.sin(PI/2)*(Math.random()*10+15)));
    xCorners[3] = (int)(myCenterX + (Math.cos(3*PI/4)*(Math.random()*10+15)));
    yCorners[3] = (int)(myCenterY + (Math.sin(3*PI/4)*(Math.random()*10+15)));
    xCorners[4] = (int)(myCenterX + (Math.cos(PI)*(Math.random()*10+15)));
    yCorners[4] = (int)(myCenterY);
    xCorners[5] = (int)(myCenterX + (Math.cos(5*PI/4)*(Math.random()*10+15)));
    yCorners[5] = (int)(myCenterY + (Math.sin(5*PI/4)*(Math.random()*10+15)));
    xCorners[6] = (int)(myCenterX);
    yCorners[6] = (int)(myCenterY + (Math.sin(3*PI/2)*(Math.random()*10+15)));
    xCorners[7] = (int)(myCenterX + (Math.cos(7*PI/4)*(Math.random()*10+15)));
    yCorners[7] = (int)(myCenterY + (Math.sin(7*PI/4)*(Math.random()*10+15)));
    myColor = 150;
    myCenterX = (double)(Math.random()*1000);
    myCenterY = (double)(Math.random()*500);
    myXspeed = (double)(Math.random()*5);
    myYspeed = (double)(Math.random()*5);
    myPointDirection = (double)(Math.random()*360);
  }
  public void move () {
    super.move();
    super.turn(orbit);
  }
}
