
int x; 
int gap; 

void setup() {
size (500, 500); 
totalLines = 50; 
gap = 10; 
}

void draw() {
  //background (0); 
  //x = 0; //if you turn on the background, you need to start from 0 every loop. 
  stroke(255); 
  while (x < width) { 
    line (x, 0, x, height); 
    x+= gap; 
    println (x); 
  }
  
}


