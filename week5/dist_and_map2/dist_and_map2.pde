void setup() {
  size(600,600);
  noStroke();
}

void draw() {
  //draw a transparent white rectangle for a cool background effect, 
  //instead of just using background(255)
  fill(255, 10);
  rect(0,0,width,height);
  
  //map the r and g values to the position of mouseX and mouseY
  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);
  float b = 150;
  
  //measure the distance from mouseX and mouseY to the previous mouseX and mouseY position
  float d = dist(mouseX,mouseY,pmouseX,pmouseY);
  
  //map a variable to the distance
  float s = map(d,0,100,30,200);
  
  //draw the ellipse using the mapped color and mapped size
  fill(r,g,b);
  ellipse(mouseX, mouseY, s, s);
}