class BinRect {

  String bin; 
  boolean isOne = false; 
  int sqSize; 

  BinRect(char bin_, int sqSize_) {
    bin = str(bin_); 
    if (bin.equals("1")) {
      isOne = true;
    }
    sqSize = sqSize_;
  }

  void displayLines() {
    stroke (255); 
    strokeWeight (.5); 
    noFill();
    rect (0, 0, sqSize, sqSize);
    if (isOne == true) {
      line (0, 0, sqSize, sqSize);
    } 
    else if (isOne == false) {
      line (sqSize, 0, 0, sqSize);
    }
  }

  void displayColors() {
    rect (0, 0, sqSize, sqSize);
    if (isOne == true) {
      fill (#B41010);
    } 
    else {
      line (sqSize, 0, 0, sqSize);
      fill (#B48E10);
    }
  }
  
  void displayTri() {
    noStroke(); 
     if (isOne == true) {
       fill (#B41010); //red goes this way \
       triangle ( 0,0, sqSize, sqSize, 0, sqSize);
     } else {
       fill (#B48E10); //yellow goes this way /
       triangle (sqSize, 0, 0, sqSize, sqSize, sqSize); 
     }
  }
  
  void displayRevTri() {
    noStroke(); 
         if (isOne == true) {
       fill (#B41010); //red goes this way \
       triangle ( 0,0, sqSize, sqSize, sqSize, 0);
     } else {
       fill (#B48E10); //yellow goes this way /
       triangle (sqSize, 0, 0, 0, 0, sqSize); 
     }
  }

}

