int x, y, w; 
boolean startDrag = false; 

int offsetX, offsetY; 

void setup() {
  size (500, 500);
  x = width/2; 
  y = height/2; 
  w = 100;  
  noStroke();
}

void draw() {
  background (255); 
  if (isDragging (x, y, w, w) == true) {
    fill (100, 0, 0);
  } 
  else {
    fill (0);
  }
  
  if (startDrag == true) {
    x = mouseX + offsetX; 
    y = mouseY + offsetY; 
  } 
  
  rect (x, y, w, w);
}

boolean isDragging(int x_, int y_, int w_, int h_) {
  if (mousePressed == true && mouseX > x_ && mouseX < x_ + w_ && mouseY > y_ && mouseY < y_ + h_) {
    return true;
  }
  return false;
}

void mousePressed () {
  startDrag = true; 
  offsetX = x - mouseX; 
  offsetY = y - mouseY; 
}

void mouseReleased() {
  startDrag = false; 
}

