void setup() {  
  //4 things to set up in a loop:
    //1: an index (counter) variable to track our loop.
    //2: a starting point for the counter variable
    //3: a change for the index variable
    //4: a end condition for the index variable
  
  int index = 10;  //index variable and starting point
  while (index > 0) {  // end condition
    println("While Loop: i is " + index);
    index--;  //change to index variable
  }
  
  // for (index variable and starting point; end condition, change)
  for (int i = 0; i < 10; i++) {
    println("For Loop: i is " + i);
  }
}

void draw() {

}