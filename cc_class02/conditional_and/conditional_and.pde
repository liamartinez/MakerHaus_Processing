/* using the conditional == and != */


void setup() {
  size (500, 500);
}

void draw() {
}

void keyPressed() {
  if (key == 'a') {
    println ("A was pressed!");
  }
  else if (key == 'b') {
    println ("B was pressed!");
  } 
  else if (key != 'b' || key != 'a') { //basically the same as just saying "else", but we needed to see != used.
    println ("NOT THE LETTER A or B!");
}
}

