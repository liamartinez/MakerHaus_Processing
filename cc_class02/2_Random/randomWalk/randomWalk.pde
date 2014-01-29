float step;
float locX, locY, r; 
color myColor; 

void setup() {
  size (200, 200); 
  noStroke(); 
  locX = width/2;
  locY = width/2; 
  myColor = color (random (0, 255), random (0, 255), random (0, 255)); 
  r = 30;
}

void draw() {

  background (0); 

  fill (myColor); 
  ellipse (locX, locY, r, r); 
  step = random (-5, 5); //lets make step random every frame
  locX += step; //and apply that to our current locX, locY
  locY += step; 

  //some conditionals to reset the location if our ellipse ever goes off screen.
  if (locX < 0 || locX > width || locY < 0 || locY > height) {
    locX = width/2;
    locY = width/2;
    //might as well create a new color while we are at it!
      myColor = color (random (0, 255), random (0, 255), random (0, 255)); 

  }
}

