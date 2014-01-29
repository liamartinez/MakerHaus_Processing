int x, y, w, h; 


void setup () {
  size (400, 400); 
  x = width/2; 
  y = height/2;
  w = 100; 
  h = 50; 
}

void draw() {
  background (0); 
  if (isTheButtonBeingPressed() == true) {
  fill (255, 0, 0);
  } else {
  fill (255); 
  }
  rect (x, y, w, h); 
}

boolean isTheButtonBeingPressed() {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mousePressed) {
    return true; 
  } else {
     return false; 
  }
  
 }



