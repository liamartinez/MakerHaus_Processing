class Item {
  int x, y; 
  int w, h; 
  boolean isHover; 
  color origColor, c; 
  String name; 

  Item() {
    origColor = color (random (255), random (255), random (255));
    c = origColor;
  }

  void setRect(int x_, int y_, int w_, int h_) {
    x = x_;
    y = y_; 
    w = w_; 
    h = h_;
  }

  void setText(String name_) {
    name = name_;
  }

  void drawRect() {
    fill (c); 
    rect (x, y, w, h);
  }

  
  void drawText() {
      fill (0); 
      textAlign (CENTER); 
      text (name, x + w/2, y + h/2); 
  }

  void activateHover() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      c = color (255);
      isHover = true;
    } 
    else {
      c = origColor;
      isHover = false; 
    }
  }
}

