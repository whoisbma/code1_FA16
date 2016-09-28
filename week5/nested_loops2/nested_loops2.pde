void setup() {
  size(600,600);
  noStroke();
}

void draw() {
  background(255);
  
  //draw a grid of ellipses with color and size dependent on where in the grid they are
  
  //TWO WAYS WE'll MAKE THIS LOOP:
  //1: we'll keep our index counters simple and map our position values.
  
  //loop 21 times in the x, 21 times in the y direction
  for (int i = 0; i <= 20; i++) {
    for (int j = 0; j <= 20; j++) {
      
      //map the position values relative to the loop indices
      float ellipsePosX = map(i, 0, 20, 0, width);
      float ellipsePosY = map(j, 0, 20, 0, height);
      
      //map the size of the ellipse relative to the i loop index
      float ellipseSize = map(i, 0, 20, 10, 50);
      
      //map the fill color of the ellipse relative to the j loop index
      float ellipseCol = map(j, 0, 20, 0, 255);
      
      //fill and draw the ellipse with our new values
      fill(ellipseCol);
      ellipse(ellipsePosX,ellipsePosY,ellipseSize,ellipseSize);
    }
  }
  
  // TRY THIS ONE NEXT:
  // 2: now we will have a more complex loop index and draw things directly.
  
  /*
  // loop 21 times in width, 21 times in the height 
  // (provided our width and height are evenly divisible by 20)
  for (int x = 0; x <= width; x += width/20) {
    for (int y = 0; y <= height; y += height/20) {
      
      // map a fill value based on the x index
      fill(map(x, 0, width, 0, 255));
      
      //map a size variable based on the y index
      float s = map(y, 0, height, 10, 50);
      
      //draw the ellipse at x and y with size of s
      ellipse(x, y, s, s);
    }
  }
  */
}