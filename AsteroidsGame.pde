Spaceship spaceman = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  background(0);
  frameRate(60);
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].showStars();
  }
  spaceman.move();
  spaceman.show();
}
public void keyPressed() {
  if (key == 'q' || key == 'Q') {
    spaceman.hyperspace();
  }
  if (key == 'w' || key == 'W') {
    spaceman.accelerate(0.5);
  }
  if (key == 'a' || key == 'A') {
    spaceman.turn(-5);
  }
  if (key == 'd' || key == 'D') {
    spaceman.turn(5);
  }
}
