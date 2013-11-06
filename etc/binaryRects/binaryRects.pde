
/*
     triangle would be
 /\   false, true 
 \/   true, flalse
 */

String [] binary; //make an array of strings for the loadStrings() function
BinRect[] rects; //array of BinRect objects

int brSize = 20; //the size of every square 

void setup() {
  size(500, 500); 
  binary = loadStrings ("binary.txt"); //this is how we import the .txt file of binary code
  rects = new BinRect[binary[0].length()]; //make the rects array as big as the number of characters in the binary code

  for (int i = 0; i < rects.length; i++) {
    rects[i] = new BinRect (binary[0].charAt(i), brSize); //initialize the binrect objects with the corresponding binary and the size of each square
  }
}

void draw() {
  background (0); 

  int cellsW = width/brSize;
  int cellsH = height/brSize;

  for (int x = 0; x < cellsW; x++) {
    for (int y = 0; y < cellsH; y++) {
      int thisOne = x + (y * cellsW);
      int theOneBelow = x + ((y+1) * cellsW);
      pushMatrix();
      translate (x*brSize, y*brSize); //draw every square in a different location according to x, y
      rects[thisOne].displayLines();  //display the lines

        if (x > 0 && x < cellsW -1 && y > 0 && y < cellsH - 1) { //exempt the edges
        if (!rects[thisOne].isOne) {
          if (rects[thisOne+1].isOne) { //the one beside it
            if (rects[theOneBelow].isOne) { //underneath it
              if (!rects[theOneBelow + 1].isOne) { //underneath it and to the right

                rects[thisOne].displayTri(); 

                pushMatrix();
                translate (brSize, 0); 
                rects[thisOne + 1].displayTri(); 
                popMatrix();

                pushMatrix(); 
                translate (0, brSize); 
                rects[theOneBelow].displayRevTri(); 
                popMatrix();

                pushMatrix();
                translate (brSize, brSize); 
                rects[theOneBelow + 1].displayRevTri();   
                popMatrix();
              }
            }
          }
        }
      }
      popMatrix();
    }
  }
}


