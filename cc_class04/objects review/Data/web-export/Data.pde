int[] values = { 
  30, 10, 45, 35, 60, 38, 75, 67
};

String [] names = {
  "lily", "igor", "stacy", "billy", "nemo", "alice", "junior", "tado"
};

Item[] items = new Item [values.length];

void setup() {
  size (500, 500);
  for (int i = 0; i < items.length; i++) {
    int mappedVal = (int)map (values[i], 0, max (values), 0, width); 
    items[i] = new Item ();
    items[i].setRect (0, height/values.length * i, mappedVal, height/values.length);
    items[i].setText (names[i]);
  }
}

void draw() {
  background (0);
  for (int i = 0; i < items.length; i++) {
    items[i].drawRect(); 
    items[i].activateHover();
    if (items[i].isHover == true && mousePressed == true) {
      items[i].drawText();
    }
  }
}



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


