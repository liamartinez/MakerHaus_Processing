PImage img;       // The source image
int cellsize = 2; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

void setup() {
  img  = loadImage("images.jpeg"); // Load the image
  size(img.width*2, img.height*2, P3D); 
  
  cols = img.width/cellsize;             // Calculate # of columns
  rows = img.height/cellsize;            // Calculate # of rows
}

void draw() {
  background(0);
  loadPixels();
  // Begin loop for columns
  for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize ; 
      int y = j*cellsize ; 
      int loc = x + y*img.width;           
      color c = img.pixels[loc];       
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (mouseX/(float)img.width) * brightness(img.pixels[loc]) - 300.0;
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x + 100,y + 100,z);
      fill(c);
      noStroke();
      rectMode(CORNER);
      rect(0,0,cellsize,cellsize);
      popMatrix();
    }
  }
}
