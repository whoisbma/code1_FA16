void setup() {  
  size(600,600);
}

void draw() {
  background(255);
  
  //create index for while loop
  int lineNum = 0;
  
  //loop 61 times (notice it is <=, not <)
  while (lineNum <= 60) {
    
    //map the stroke color to the index of the loop
    stroke(map(lineNum,0,60,0,255), 100, 100);
    
    //draw a line with the position based on the loop index
    line(lineNum * 10, 100, lineNum * 10 + 10, 200);
    
    //try this one to integrate the mouse position into the line position
    //line(lineNum * mouseX/10, 100, lineNum * 10 + 10, 200);
    
    //increment the loop index so we don't have an infinite loop
    lineNum++;
  }
  
  noStroke();
  
  //loop 61 times by counting up from 0 to 60
  for (int i = 0; i <= 60; i++) {
    
    //map a fill color to the loop index
    fill(map(i,0,60,0,255));
    
    //draw an ellipse with a position based on the loop index
    ellipse(i * 10 + 1, 400 + i, 9, 9);
    
    //try this one to have mouse position also influencing ellipse position
    //ellipse(i * mouseX/10 + 1, 400 + i, 9, 9);
  }
  
}