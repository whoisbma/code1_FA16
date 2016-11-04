//also write one where two ellipses collide and make another one

ArrayList<Walker> w = new ArrayList<Walker>();

void setup() {
  size(700, 700);
  noStroke();
}

void draw() {
  for (Walker walker : w) {
    walker.move();
    walker.display();
    for (Walker otherWalker : w) {
      if (walker != otherWalker) {
        if (dist(walker.x, walker.y, otherWalker.x, otherWalker.y) < 1) {
          walker.siz++;
          walker.xStep = walker.siz*2;
          walker.yStep = walker.siz*2;
        }
      }
    }
  }
}

void mousePressed() {
  w.add(new Walker(mouseX,mouseY));
  println("new walker");
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 1;
    this.xStep = this.siz * 2;
    this.yStep = this.siz * 2;
  }

  void display() {
    fill(0);
    rect(x, y, siz, siz);
  }

  void move() {
    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
  }
}