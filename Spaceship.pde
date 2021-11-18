class Spaceship extends Floater  
{   
  Spaceship() {
    corners = 9;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = 5;
    yCorners[1] = -3;
    xCorners[2] = 0;
    yCorners[2] = -15;
    xCorners[3] = -5;
    yCorners[3] = -3;
    xCorners[4] = -10;
    yCorners[4] = -10;
    xCorners[5] = -10;
    yCorners[5] = 10;
    xCorners[6] = -5;
    yCorners[6] = 3;
    xCorners[7] = 0;
    yCorners[7] = 15;
    xCorners[8] = 5;
    yCorners[8] = 3;
    myColor = color(255);
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    background(0);
    myPointDirection = (float)(Math.random()*360);
    myCenterX = Math.random()*501;
    myCenterY = Math.random()*501;
  }
}
