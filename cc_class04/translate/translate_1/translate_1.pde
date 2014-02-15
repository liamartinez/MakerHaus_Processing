float angle; 

void setup() {
size (300, 300, P3D); 
}

void draw() {
  background (0); 
  
  rect (50, 50, 50, 50); 
  
  pushMatrix(); 
  translate (width/2, height/2); 
  rotateZ (radians (angle)); 
  angle += 5; 
  rectMode (CENTER); 
  rect (0, 0, 50, 50); 
  popMatrix(); 
  
}
