class Ball {

  float locX, locY;
  int diam; 
  float speed = 5;
  color c = color(int (random (255)), int (random (255)), int (random (255)));

  //constructor
  Ball(float locX_, float locY_, int diam_) {
    locX = locX_; 
    locY = locY_; 
    diam = diam_;
  }


  void displayCircle() {
    fill (c); 
    ellipseMode (CORNER);
    ellipse (locX, locY, diam, diam);
  }
  
  void displaySq() {
    fill (c); 
    rectMode (CORNER); 
    rect (locX, locY, diam, diam); 
  }
  
  boolean isMouseOver() {
    if (mouseX > locX && mouseX < locX + diam && mouseY > locY && mouseY < locY + diam) {
      return true; 
    } else {
      return false; 
    }
  }


  void bounce() {
    fill (c); 
    ellipse (locX, locY, diam, diam);
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

