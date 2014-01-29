/* using the conditional OR */


void setup() {
size (300, 300); 
noStroke(); 
}

void draw() {
  background(0); 
  
  if (mouseX < width/3 || mouseX > width - width/3) {
    fill (255, 0, 0); //red
  } else {
    fill (255); 
  }
  
  rect (0, 0, width/3, height); //left circle
  rect (width - width/3, 0, width/3, height); //right circle
  
}
