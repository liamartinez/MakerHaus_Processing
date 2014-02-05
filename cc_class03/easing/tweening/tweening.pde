

float x;
float y;


void setup() {
  size(640, 360); 
  noStroke();  
}

void draw() { 
  background(51);
  
  float targetX = mouseX;
  float dx = targetX - x;
  if(dx > 1) {
    x ++;
  } else if (dx < 1) {
    x--;
  }
  
  float targetY = mouseY;
  float dy = targetY - y;
  if(dy > 1) {
    y ++;
  } else if (dy < 1) {
    y--; 
  }
  
  ellipse(x, y, 66, 66);
}
