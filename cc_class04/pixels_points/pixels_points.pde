import processing.video.*;

Capture vid; 

void setup() {
  size (640, 480); 
  vid = new Capture (this); 
  vid.start(); 
}

void draw() {
  background (0); 
  ellipseMode (CENTER); 
  
  if (vid.available()) {
    vid.read(); 
    vid.loadPixels(); 
    
    for (int x = 0; x < vid.width; x+=5) {
      for (int y = 0; y < vid.height; y+=5) {
        float bright = brightness(vid.pixels[x + (y * vid.width)]);
        float mapBright = map (bright, 0, 255, 1, 2); 
        ellipse (x, y, mapBright, mapBright); 
      }
    }
    
  }
  
  if (mousePressed)image (vid, 0, 0); 
}

