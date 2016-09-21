float ballX;
float ballY;

float speedX;
float speedY;

void setup() {
  size(600,600);
  background(0);
  
  ballX = width/2;
  ballY = height/2;
  
  speedX = random(-5,5);
  speedY = random(-5,5);
}

void draw() {
  background(0);
  
  fill(255);
  ellipse(ballX, ballY, 50, 50);
  
  ballX += speedX;
  ballY += speedY;
  
  if (ballX > width || ballX < 0) {
    ballX -= speedX;
    speedX = -speedX;
  }
  
  if (ballY > height || ballY < 0) {
    ballY -= speedY;
    speedY = -speedY;
  }
  
}