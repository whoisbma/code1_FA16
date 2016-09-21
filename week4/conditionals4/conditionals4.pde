//use the distance function to measure the mouse distance to the center of the circle
//then compare it to the length of the circle's radius.
//if its smaller, the mouse is inside the circle. change its fill value if it is

int ellipseX;
int ellipseY;
int ellipseSize;

boolean ellipseHighlighted = false;

void setup() {
  size(600, 600);

  ellipseX = width/2;
  ellipseY = height/2;
  ellipseSize = 100;
}

void draw() {
  background(100);

  float distance = dist(mouseX, mouseY, ellipseX, ellipseY);

  if (distance < ellipseSize/2) {
    ellipseHighlighted = true;
  } else {
    ellipseHighlighted = false;
  }

  if (ellipseHighlighted) {
    fill(255);
  } else {
    fill(150);
  }
  ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);
}