
/* random lines where the mouse travels */ 

void setup() {
  size (500, 500); 
}

void draw() {
  line (mouseX + random (-10, 10), mouseY + random (-10, 10), mouseX + random (-10, 10), mouseY + random (-10, 10));  
}
