int x = 0;
int y = 0;
float rot = 0;

void setup() {
  size(600,600);
  rectMode(CENTER);
}

void draw() {
  rot+=5;
  x+=5;
  
  translate(x,y);
  rotate(radians(rot)); 
  rect(0,0,mouseX,mouseY);
  
  if (x > width) {
    x = 0;
    y += 50;
  }
}