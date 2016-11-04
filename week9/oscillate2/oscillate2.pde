float x;
float y;
float oscCountX;
float oscCountY;
float amplitudeX;
float amplitudeY;
float centerX;
float centerY;

void setup() {
  size(700, 700);
  oscCountX = 0;
  oscCountY = 0;
  amplitudeX = 100;
  amplitudeY = 100;
  centerX = width/2;
  centerY = height/2;
  noStroke();
  textAlign(CENTER, CENTER);
}

void draw() {
  noStroke();
  fill(255, 50);
  rect(0, 0, width, height);

  fill(200);
  ellipse(centerX, centerY, 10, 10);
  stroke(200);
  line(centerX, centerY, x, y);

  noStroke();

  oscCountX += 0.03;
  oscCountY += 0.09;
  x = centerX + sin(oscCountX) * amplitudeX;
  y = centerY + cos(oscCountY) * amplitudeY;
  fill(80);
  ellipse(x, y, 50, 50);

  fill(100, 50, 200);
  ellipse(centerX + 150, y, 20, 20);
  fill(200, 100, 50);
  ellipse(x, centerY + 150, 20, 20);

  stroke(100, 50, 200);
  line(x, y, centerX+150, y);
  stroke(200, 100, 50);
  line(x, y, x, centerY+150);
}