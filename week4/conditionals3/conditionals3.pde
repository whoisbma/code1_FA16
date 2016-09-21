int rect1X, rect1Y;
int rect1W, rect1H;

int rect2X, rect2Y;
int rect2W, rect2H;

void setup() {
  size(600, 600);

  rect1X = 125;
  rect1Y = 250;
  rect1W = 150;
  rect1H = 100;

  rect2X = 325;
  rect2Y = 250;
  rect2W = 150;
  rect2H = 100;
}

void draw() {
  background(230);

  if (mouseX > rect1X && mouseX < rect1X + rect1W &&
    mouseY > rect1Y && mouseY < rect1Y + rect1H) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  rect(rect1X, rect1Y, rect1W, rect1H);
  
  if (mouseX > rect2X && mouseX < rect2X + rect2W &&
    mouseY > rect2Y && mouseY < rect2Y + rect2H) {
    fill(0, 0, 255);
  } else {
    fill(255);
  }

  rect(rect2X, rect2Y, rect2W, rect2H);

}