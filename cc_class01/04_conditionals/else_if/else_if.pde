void setup() {
  size(500,500); 
  noStroke();
}

void draw() {
  if (mouseX < width/3) {
    background(255, 0, 0); 
  } else if (mouseX > width/3 && mouseX < (width - width/3)) {
    background (0, 255, 0); 
  } else {
    background (0); 
  }
}

