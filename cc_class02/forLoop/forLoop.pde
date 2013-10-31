 int x; 
int gap; 

void setup() {
size (500, 500); 
gap = 10; 
}

void draw() {
  
  background (0); 
  fill (0); 
  stroke(255); 
  for (int x = 0; x < width; x+=gap) {
    line (x, 0, x, height); 
  }
  
}


