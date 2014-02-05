
Ball [] bGrid; 

void setup() {
  size (500, 500); 
  noStroke(); 

  int gridW = 10; 
  int gridH = 10; 
  int circSize = width/gridW; 

  bGrid = new Ball [gridW*gridH];

  for (int x =0; x < gridW; x++) {
    for (int y = 0; y < gridH; y++) {
      bGrid[x + y*gridH] = new Ball (x*circSize, y*circSize, circSize);
    }
  }
}

void draw() {
  background (0); 
  for (int i = 0; i < bGrid.length; i++) {
    if (bGrid[i].isMouseOver()) {
      bGrid[i].bounce();
    } 
    else {
      bGrid[i].displayCircle();
    }
  }
}

void keyPressed() {
  //b.changeColor (color(int (random (255)), int (random (255)),int (random (255))));
}

void mousePressed() {
}

