void setup() {
  size(600,600);
}

void draw() {
  if (mouseX < width/2) {
    background(225);
  } else {
    background(30);
  }
  
  stroke(255,0,0);
  line(width/2, 0, width/2, height);
  fill(255,0,0);
  text("mouseX value is: " + mouseX + "\nwidth/2 is: " + width/2, 20, 20);
}