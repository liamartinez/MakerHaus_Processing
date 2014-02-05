
int [] xVals; 
int [] yVals; 

int current; 

void setup() {
  size (400, 400); 
  xVals = new int [20]; 
  yVals = new int [20];
  for (int i = 0; i < xVals.length; i++) {
    xVals[i] = 0; 
    yVals[i] = 0;
  }
}

void draw() {
  background (255); 
  noFill(); 
  strokeWeight(3); 
  beginShape(); 
  for (int i = 0; i < xVals.length; i++) {
    if (i <= current) {
      curveVertex (xVals[i], yVals[i]);
    }
  }
  endShape();
}

void mousePressed() {
  println ("saved! number: " + current); 
  xVals[current] = mouseX; 
  yVals[current] = mouseY; 

  if (current < xVals.length -1) {
    current++;
  } 
  else {
    current = 0;
  }
}

