int[] values = { 
  30, 10, 45, 35, 60, 38, 75, 67
};

void setup() {
  size (500, 500);
}

void draw() {
  background (0);
  //drawBars (values); 
  //drawLine (values); 
  pieChart (300, values); 
}

void drawLine(int[] data) {
  noFill(); 
  stroke (255); 
  beginShape(); 
  for (int i = 0; i < data.length; i++) {
    vertex(i * width/data.length, height/2 - data[i]);
  }
  endShape();
}

void drawBars(int[] data) {
  for (int i = 0; i < data.length; i++) {
    float mappedVal = map (data[i], 0, max (data), 0, width); 
    rect (0, height/data.length * i, mappedVal, height/data.length);
  }
}

void pieChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
  }
}

