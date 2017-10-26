//draw a rectangle starting at the top left of the screen
//move it across to the right, then back left and down when it gets to the edge.
//change the size of the rectangle based on the mouseX and mouseY position.

int x = 0;
int y = 0;
float angle = 0;

void setup() {
  size(600,600);
  rectMode(CENTER);
}

void draw() {
  angle += 5;
  x+=5;
  
  translate(x,y);
  rotate(radians(angle)); 
  rect(0,0,mouseX,mouseY);
  
  if (x > width) {
    x = 0;
    y += 50;
  }
}