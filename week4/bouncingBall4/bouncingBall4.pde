float ballX;
float ballY;

float ballSize;

float speedX;
float speedY;

void setup() {
  size(600,600);
  background(0);
  
  noStroke();
  
  ballX = width/2;
  ballY = height/2;
  
  speedX = random(-5,5);
  speedY = random(-5,5);
  
  ballSize = 50;
}

void draw() {
 float r = map(ballX, 0, width, 0, 255);
  float g = map(ballY, 0, height, 0, 255);
  
  background(255-r, 255-g, 150);
  
  fill(r,g,150);
  ellipse(ballX, ballY, ballSize, ballSize);
  
  ballX += speedX;
  ballY += speedY;
  
  if (ballX > width - ballSize/2 || ballX < ballSize/2) {
    ballX -= speedX;
    speedX = -speedX;
  }
  
  if (ballY > height - ballSize/2 || ballY < ballSize/2) {
    ballY -= speedY;
    speedY = -speedY;
  }
  
}