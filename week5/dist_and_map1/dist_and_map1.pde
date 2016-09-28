void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  //measure the distance from the mouse to the center
  float d = dist(width/2, height/2, mouseX, mouseY);

  //fill a mapped color based on the distance
  fill(map(d, 0, 600, 50, 250));
  //draw an ellipse from the center to double the length of the line (the radius)
  ellipse(width/2, height/2, d*2, d*2);

  //fill a darker mapped color based on the distance
  fill(map(d, 0, 600, 0, 200));
  //draw an ellipse fron the center to the length of the line
  ellipse(width/2, height/2, d, d);

  //draw the line from the center to the mouse
  line(width/2, height/2, mouseX, mouseY);
}