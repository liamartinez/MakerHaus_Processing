float angleY, angleX; 

void setup() {
size (300, 300, P3D); 
}

void draw() {
  background (0); 
  noFill(); 
  stroke (255); 
  pushMatrix(); 
  translate (width/2, height/2); 
  /*
  rotateZ (angle); 
  angle +=.1; 
  */
  
  angleY = map (mouseX, 0, width, radians (0), radians (360)); 
  rotateY(angleY); 
  
    angleX = map (mouseY, 0, height, radians (0), radians (360)); 
  rotateX(angleX);
  
     if (mousePressed) {
    lights();
    fill (255); 
  }
  rectMode (CENTER); 
  box (50); 
  popMatrix(); 

}
