/* using the conditional AND */


void setup() {
size (300, 300); 
}

void draw() {
  background(0); 
  if (mouseX < width/3 && mouseY < height/3) {
    fill (255, 0, 0); 
  } else {
    fill (255);
  }
  rect (0, 0, width, height/3); 
  rect (0, 0, width/3, height); 
  
}
