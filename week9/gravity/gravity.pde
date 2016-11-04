ArrayList<Ball> ballList = new ArrayList<Ball>();

void setup() {
  size(600,600);
}

void draw() {
  background(20);
  for (Ball b : ballList) {
    b.update();
    b.display();
  }
  
  for (int i = ballList.size()-1; i >= 0 ; i--) {
    Ball b = ballList.get(i);
    if (b.removeMe) {
      ballList.remove(i);
    }
  }
  
  if (mousePressed) {
    ballList.add(new Ball(mouseX,mouseY));
  }
}

class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  boolean removeMe = false;

  Ball(float x, float y) {
    pos = new PVector(x,y);
    vel = PVector.random2D();
    vel.setMag(5);
    acc = new PVector(0,0.1);
  }
  
  void update() {
    pos = pos.add(vel);
    vel = vel.add(acc);
    
    if (pos.y > height-15) {
      pos.sub(vel);
      vel.y *= -.9;
    }
    
    if (pos.x > width+15 || pos.x < -15) {
      removeMe = true;
    }
  }
  
  void display() {
    fill(240);
    ellipse(pos.x, pos.y, 30, 30);
  }
}