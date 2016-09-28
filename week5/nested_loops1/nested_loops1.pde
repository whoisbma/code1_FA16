void setup() {
  
  //keep track of our total loops with this variable
  int totalCount = 0;
  
  //loop 5 times
  for (int i = 0; i < 5; i++) {
    //loop 5 times
    for (int j = 0; j < 5; j++) {
      
      //print out our index values
      println("i: " + i);
      println("j: " + j);
  
      //increment our total count and print it out. 
      //it should be 25. (5x5=25)
      totalCount++;
      println(totalCount + " total loops\n");
    }
  }
}

void draw() {

}