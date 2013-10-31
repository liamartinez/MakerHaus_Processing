class Ball {

  int startTime; 
  int lifetime = 120; 
  float locX, locY;
  int diam; 
  float speed = 5;
  color c = color(int (random (255)), int (random (255)), int (random (255)));

  //constructor
  Ball(float locX_, float locY_, int diam_) {
    locX = locX_; 
    locY = locY_; 
    diam = diam_;
    startTime = frameCount; 
  }


  void displayCircle() {
    fill (c); 
    ellipseMode (CENTER); 
    ellipse (locX, locY, diam, diam);
  }
  
  void displaySq() {
    fill (c); 
    rectMode (CENTER); 
    rect (locX, locY, diam, diam); 
  }
  
  boolean isMouseOver() {
    if (dist (mouseX, mouseY, locX, locY) < diam/2 ) {
      return true; 
    } else {
      return false; 
    }
  }
  
  boolean isDead() {
    if (frameCount - startTime > lifetime) {
      return true; 
    } else {
      return false; 
    }
  }

  void bounce() { 
    locY = locY + speed; //we are incrementing the location with speed
    speed += 0.1; //and then incrementing the speed with "gravity"

    if (locY > height) {
      speed = speed * -.85; //lets reverse direction, just like before, but this time significantly less every time so the ball realistically doesn't bounce forever.
    }
  }

  void changeColor(color c_) {
    c = c_;
  }
}

