float[] y = new float[100];
float[] x = new float[100];

void setup() {
  size(700,700);
  noFill();
  stroke(0);
}

void draw() {
  background(255);
  float osc = frameCount * 0.05;
  float mx = map(mouseX, 0, width, 0.0, 0.3);
  float my = map(mouseY, 0, height, 0.0, 0.3);

  beginShape();
  for (int i = 0; i < y.length; i++) {
    curveVertex(x[i], y[i]);
    y[i] = height/2 + sin((osc + i*3) * mx) * 200;
    x[i] = width/2 + cos((osc + i*3) * my) * 200;
  }
  endShape();
}