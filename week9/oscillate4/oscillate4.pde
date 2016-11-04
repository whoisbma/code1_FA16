void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(127 + sin(frameCount * 0.03) * 127, 100, 150);
  
  fill(50, 100, 127 + cos(frameCount * 0.03) * 127);
  ellipse(width/2,height/2,400 + sin(frameCount * 0.03) * 50,400);
}