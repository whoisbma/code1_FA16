float startingSize;
float oscSize;
float oscCount;
float amplitude;

void setup() {
  size(700,700);
  oscCount = 0;
  amplitude = 100;
  startingSize = 150;
  noStroke();
}

void draw() {
  background(10);
  oscCount += 0.03;
  oscSize = startingSize + sin(oscCount) * amplitude;
  fill(255);
  ellipse(width/2, height/2, oscSize, oscSize);
}