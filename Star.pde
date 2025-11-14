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
