Walker w;

void setup() {
  size(700,700);
  w = new Walker();
}

void draw() {
  w.move();
  w.display();

}

class Walker {
  float x,y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void move() {
    int rand = (int)random(4);
    switch (rand) {
      case 0:
        x-=2;
        break;
      case 1:
        x+=2;
        break;
      case 2:
        y-=2;
        break;
      case 3:
        y+=2;
        break;
      default:
        break;
    }
  }
}