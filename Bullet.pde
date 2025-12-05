class Bullet extends Floater {
  public Bullet() {
    corners = 0;
    myCenterX = Bob.getX();
    myCenterY = Bob.getY();
    myXspeed = Bob.getXspeed() + Math.cos(2*PI*Bob.getDirection()/360)*5;
    myYspeed = Bob.getYspeed() + Math.sin(2*PI*Bob.getDirection()/360)*5;
  }
  void show() {
    fill(255,255,0);
    ellipse((float)myCenterX, (float)myCenterY, 3, 3);
  }
  void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX() {return myCenterX;}
  public double getY() {return myCenterY;}
}
