class Asteroid extends Floater {
  double orbit = (double)(Math.random()*2)-1;
  public Asteroid() {
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
    myXspeed = (double)(Math.random()*10-5);
    myYspeed = (double)(Math.random()*10-5);
    myPointDirection = (double)(Math.random()*360);
  }
  public void move () {
    super.move();
    super.turn(orbit);
  }
  public double getX() {return myCenterX;}
  public double getY() {return myCenterY;}
}
