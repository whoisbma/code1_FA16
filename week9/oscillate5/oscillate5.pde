float x[] = new float[20];
float oscCountX;
float amplitudeX;
float centerX;

void setup() {
  size(700, 700);
  oscCountX = 0;
  amplitudeX = 200;
  centerX = width/2;
  noStroke();
}

void draw() {
  background(255);
  noStroke();
  oscCountX += 0.3;
  for (int i = 0; i < x.length; i++) {
    x[i] = centerX + sin((oscCountX + i) * 0.1) * amplitudeX;
    fill(map(i, 0, x.length, 0, 230));
    float siz = 10 + i*3;
    ellipse(x[i], height/2, siz, siz);
  }
}