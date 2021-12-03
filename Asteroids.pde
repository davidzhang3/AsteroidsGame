class Asteroids extends Floater {
  private double rotationSpeed;
  public Asteroids() {
    rotationSpeed = (Math.random()*3)-1;
    corners = 8;
    myCenterX = (Math.random()*501);
    myCenterY = (Math.random()*501);
    myXspeed = ((Math.random()*3)-1);
    myYspeed = ((Math.random()*3)-1);
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 12 + (int)((Math.random()*3)-1);
    yCorners[0] = 0 + (int)((Math.random()*3)-1);
    xCorners[1] = 5 + (int)((Math.random()*3)-1);
    yCorners[1] = 8 + (int)((Math.random()*3)-1);
    xCorners[2] = -2 + (int)((Math.random()*3)-1);
    yCorners[2] = 8 + (int)(Math.random()*2);
    xCorners[3] = -10 + (int)((Math.random()*3)-1);
    yCorners[3] = 7 + (int)((Math.random()*3)-1);
    xCorners[4] = -7 + (int)((Math.random()*3)-1);
    yCorners[4] = 0 + (int)((Math.random()*3)-1);
    xCorners[5] = -10 + (int)((Math.random()*3)-1);
    yCorners[5] = -7 + (int)((Math.random()*3)-1);
    xCorners[6] = 1 + (int)((Math.random()*3)-1);
    yCorners[6] = -10 + (int)((Math.random()*2)-1);
    xCorners[7] = 6 + (int)((Math.random()*3)-1);
    yCorners[7] = -9 + (int)((Math.random()*3)-1);
    myColor = color(166, 166, 166);
  }
  public void move() {
    turn(rotationSpeed);
    super.move();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
