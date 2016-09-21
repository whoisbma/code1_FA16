int ellipseX;
int ellipseY;
int ellipseSize;

boolean ellipsePressed = false;

void setup() {
  size(600, 600);

  ellipseX = width/2;
  ellipseY = height/2;
  ellipseSize = 100;
}

void draw() {
  if (ellipsePressed) {
    background(255);
  } else {
    background(150);
  }
  
  fill(0);
  text("ellipsePressed is " + ellipsePressed, 20, 20);
 
  fill(255);
  ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);
}

void mousePressed() {
  float distance = dist(mouseX, mouseY, ellipseX, ellipseY);

  if (distance < ellipseSize/2) {
    ellipsePressed = !ellipsePressed;
  }
}