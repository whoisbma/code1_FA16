
//create 3 variables that we will use to store the rotation for each coordinate system
float planet1Rot;
float planet2Rot;
float planet3Rot;

void setup() {
  size(700,700);
  rectMode(CENTER);  //draw rectangles from the center, rather than the corner
  noStroke();
}

void draw() {
  background(80);
  
  //increment the rotation values each frame so that each coordinate system rotates when we plug them in
  planet1Rot+=0.1;
  planet2Rot+=0.5;
  planet3Rot+=1;
  
  drawOrigin(); //draw the axis at the original origin point -the top left of the screen
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(planet1Rot));
  drawPlanet(0,0,100,150);
  drawOrigin();
  
  pushMatrix();  //save the below coordinate system changes
  translate(200,0);  //move coordinate system 200 pixels to the right
  rotate(radians(planet2Rot));  //rotate coordinate system planet2Rot degrees
  drawPlanet(0,0,70,200);  //call the draw planet function
  drawOrigin();
  
  pushMatrix();  //save the below coordinate system changes
  translate(100,0);  //move coordinate system 100 pixels to the right
  rotate(radians(planet3Rot));  //rotate coordinate system planet3Rot degrees
  drawPlanet(0,0,50,240);  //call the draw planet function
  drawOrigin();  //call the draw axis function
  
  popMatrix(); //pop back 3 times so we're back to our original coordinate system
  popMatrix();
  popMatrix();
  
  
}

//function that draws a square "planet" with a custom grayscale fill, position and size
void drawPlanet(int x, int y, int siz, int col) {
  fill(col);
  rect(x,y,siz,siz);  
}

//function that draws an axis coming from the origin point of the current coordinate system
void drawOrigin() {
  fill(0);
  text("0,0",0,0);
  stroke(0,70);
  line(0,0,width,0);
  line(0,0,0,height);
  noStroke();
}