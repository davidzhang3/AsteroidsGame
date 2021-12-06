class Bullets extends Floater {
  public Bullets (Spaceship spaceman) {
    myCenterX = spaceman.getX();
    myCenterY = spaceman.getY();
    myPointDirection = spaceman.getPointDirection();
    myXspeed = spaceman.getXspeed();
    myYspeed = spaceman.getYspeed();
    accelerate(3.0);
  }
  public void show() {
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
