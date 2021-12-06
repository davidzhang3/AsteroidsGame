Spaceship spaceman = new Spaceship();
Star[] stars = new Star[200];
ArrayList<Asteroids> rocks = new ArrayList<Asteroids>();
ArrayList<Bullets> bullet = new ArrayList<Bullets>();
public void setup() 
{
  background(0);
  frameRate(60);
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    rocks.add(new Asteroids());
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
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float distance = dist((float)spaceman.getX(), (float)spaceman.getY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY());
    if (distance < 15) {
      rocks.remove(i);
    }
  }
  for (int i = 0; i < bullet.size(); i++) {
    bullet.get(i).move();
    bullet.get(i).show();
    for(int a = 0; a < rocks.size(); a++){
      float bulletDistance = dist((float)bullet.get(i).getX(), (float)bullet.get(i).getY(), (float)rocks.get(a).getCenterX(), (float)rocks.get(a).getCenterY());
      if(bulletDistance < 10){
        rocks.remove(a);
        bullet.remove(i);
        rocks.add(new Asteroids());
        break;
      }
    }
  }
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
  if (key == ' ') {
    bullet.add(new Bullets(spaceman));
  }
}
