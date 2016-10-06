float[] xPosArr = new float[5];

void setup() {
  size(600,600);
  noStroke();
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] = 100 + i * 100;
  }
}

void draw() {
  background(70);
  
  for (int i = 0; i < xPosArr.length; i++) {
    xPosArr[i] += random(-i,i);
    
    fill(map(xPosArr[i], 0, width, 0, 255));
    ellipse(xPosArr[i], height/2, 50, 50);
  }
}