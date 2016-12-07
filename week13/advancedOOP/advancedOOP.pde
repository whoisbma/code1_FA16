//CirBall b1;
//SqBall b2;
//TriBall b3;

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(600, 600);
  rectMode(CENTER);
  
  for (int i = 0; i < 50; i++) {
    float r = random(1);
    if (r < 0.33) {
      CirBall b = new CirBall(new PVector(random(width), random(height)));
      balls.add(b);
    } else if (r >= 0.33 && r < 0.66) {
      SqBall b = new SqBall(new PVector(random(width), random(height)));
      balls.add(b);
    } else {
      TriBall b = new TriBall(new PVector(random(width), random(height)));
      balls.add(b);
    }
    
  } 

  //b1 = new CirBall(new PVector(width/2 - 100, height/2));
  //b2 = new SqBall(new PVector(width/2, height/2));
  //b3 = new TriBall(new PVector(width/2 + 100, height/2));
}

void draw() {
  
  for (Ball b : balls) {
    b.display();
  }
  //b1.display();
  //b2.display();
  //b3.display();
  
}

class Ball {
  PVector pos;

  Ball(PVector p) {
    pos = p.copy();
  }

  void display() {
    
  }
}

class CirBall extends Ball {
  
  CirBall(PVector p) {
    super(p);
  }
  
  void display() {
    ellipse(pos.x, pos.y, 50, 50);
  }
}

class SqBall extends Ball {

  SqBall(PVector p) {
    super(p);
  }

  void display() {
    rect(pos.x, pos.y, 50, 50);
  }
} 

class TriBall extends Ball {

  TriBall(PVector p) {
    super(p);
  }

  void display() {
    triangle(pos.x-25, pos.y+25, pos.x+25, pos.y+25, pos.x, pos.y-25);
  }
}