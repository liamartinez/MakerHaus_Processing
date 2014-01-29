void setup() {
  size (255, 255);
}

void draw() {
  background (255); 
  int i = 0; 
  
  while (i < width) {
  
  int val = abs (mouseX - i); 
  stroke (val); 
  line (i, 0, i, height); 
  i++; 
  }
}

