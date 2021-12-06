class Star
{
  private int myColor, myX, myY;
  public Star() {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
  }
  public void showStars() {
    fill(myColor);
    noStroke();
    beginShape();
    curveVertex(myX, myY - 3);
    curveVertex(myX, myY - 3);
    curveVertex(myX + 1, myY - 1);
    curveVertex(myX + 3, myY);
    curveVertex(myX + 1, myY + 1);
    curveVertex(myX, myY + 3);
    curveVertex(myX - 1, myY + 1);
    curveVertex(myX - 3, myY);
    curveVertex(myX - 1, myY - 1);
    curveVertex(myX, myY - 3);
    curveVertex(myX, myY - 3);
    endShape();
  }
}
