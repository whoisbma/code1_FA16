float x;
float oscCount;
float amplitude;
float centerPoint;

void setup() {
  size(700,700);
  oscCount = 0;
  amplitude = 100;
  centerPoint = width/2;
  noStroke();
  textAlign(CENTER,CENTER);
}

void draw() {
  fill(255,30);
  rect(0,0,width,height);
  oscCount += 0.03;
  x = centerPoint + sin(oscCount) * amplitude;
  fill(80);
  ellipse(x, height/2, 50, 50);
  
  displayNotes();
}

void displayNotes() {
  fill(245);
  rect(0,400,width,30);
  rect(0,270,width,30);
  fill(0);
  text(sin(oscCount),width/2, 285);
  text("-1", width/2 - amplitude,415);
  text("0", width/2, 415);
  text("1", width/2 + amplitude,415);
}