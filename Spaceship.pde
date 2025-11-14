class Spaceship extends Floater  
{   
    class Spaceship extends Floater {
  public Spaceship() { 
    corners = 7;   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(myCenterX) + 20;   
    yCorners[0] = (int)(myCenterY) + 3;
    xCorners[1] = (int)(myCenterX) - 5;
    yCorners[1] = (int)(myCenterY) + 10;
    xCorners[2] = (int)(myCenterX) - 10;   
    yCorners[2] = (int)(myCenterY) + 20;
    xCorners[3] = (int)(myCenterX) - 15;   
    yCorners[3] = (int)(myCenterY);
    xCorners[4] = (int)(myCenterX) - 10;   
    yCorners[4] = (int)(myCenterY) - 20;
    xCorners[5] = (int)(myCenterX) - 5;   
    yCorners[5] = (int)(myCenterY) - 10;
    xCorners[6] = (int)(myCenterX) + 20;   
    yCorners[6] = (int)(myCenterY) - 3;
    myColor = 150;   
    myCenterX = 500; 
    myCenterY = 250;  
    myXspeed = 0; 
    myYspeed = 0; 
    myPointDirection = 0;
  }
  public void HyperSpace () {
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
  }
}

}
