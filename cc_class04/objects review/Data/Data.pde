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



