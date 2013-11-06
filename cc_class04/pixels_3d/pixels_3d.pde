import processing.video.*;

Capture vid; 

void setup() {
  size (640, 480, P3D); 
  noStroke(); 
  vid = new Capture (this); 
  vid.start(); 
}

void draw() {
  background (0); 
  ellipseMode (CENTER); 
  
  float rotY = map (mouseX, 0, width, 0, 360); 
  float rotX = map (mouseY, 0, height, 0, 360); 
  pushMatrix();
  translate (width/2, height/2); 
  rotateY(radians (rotY)); 
  rotateX (radians (rotX)); 
  
  if (vid.available()) {
    vid.read(); 
    vid.loadPixels(); 
    
    for (int x = 0; x < vid.width; x+=10) {
      for (int y = 0; y < vid.height; y+=10) {
        float bright = brightness(vid.pixels[x + (y * vid.width)]);
        float mapBright = map (bright, 0, 255, 3, 9); 
        pushMatrix();
        translate (x - width/2, y - height/2, mapBright*50);
        ellipse (0, 0, mapBright, mapBright); 
        popMatrix(); 
      }
    }
    
  }
  

  rotateY(radians (rotY)); 
  popMatrix(); 
  
  if (mousePressed)image (vid, 0, 0); 
}

