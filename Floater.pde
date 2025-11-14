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
    if (key == 'w' || key == 'W') {Bob.accelerate(1);}
    if (key == 's' || key == 'S') {Bob.accelerate(-1);}
    if (key == 'q' || key == 'Q') {Bob.HyperSpace();}
  }
  Bob.myXspeed = Bob.myXspeed * 0.995;
  Bob.myYspeed = Bob.myYspeed * 0.995;
  Bob.move();
  Bob.show();
}
class Floater {   
  protected int corners;   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees      
  public void accelerate (double dAmount) {          
    double dRadians =myPointDirection*(Math.PI/180);         
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (double degreesOfRotation) {  
    myPointDirection+=degreesOfRotation;   
  }   
  public void move () {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;      
    if(myCenterX > width) {     
      myCenterX = 0;    
    } else if (myCenterX<0) {     
      myCenterX = width;    
    } if(myCenterY >height) {    
      myCenterY = 0;    
    } else if (myCenterY < 0) {     
      myCenterY = height;    
    }   
  }   
  public void show () {             
    fill(myColor);   
    stroke(myColor);    
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
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
class Star {
  private int Color, myX, myY, size;
  public Star() {
    Color = (int)(Math.random()*200)+55;
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*500);
    size = (int)(Math.random()*5);
  }
  public void show() {
    noStroke();
    fill(Color);
    ellipse(myX, myY, size, size);
  }
}
