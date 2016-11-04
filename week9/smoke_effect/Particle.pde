class Particle {
  float x, y;
  float s; // size
  float a; // alpha
  float lifetime;
  float xDir, yDir;
  
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    s = 30;//random(10,50);
    a = 40;
    lifetime = 100;
    xDir = random(-0.5,0.5);
    yDir = random(1,2);
  }
  
  void update() {
    lifetime--;
    y-=yDir*2;
    x+=xDir*2;
    
    s = map(a, 40, 0, 30, 150);
    
    if (a > 0) {
      a-=0.5;
    }
    
    // change the size somehow
  }
  
  void display() {
    fill(0, a);
    ellipse(x,y,s,s);
  }
}