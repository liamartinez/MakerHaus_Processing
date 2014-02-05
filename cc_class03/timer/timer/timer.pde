
int startTime, interval; 
color c; 
boolean okGo = false; 

void setup() {
  size (200, 200);
  noStroke(); 
  startTime = millis(); 
  interval = 1000; 
  c = color (random (255), random (255), random (255));
}

void draw() {
  
  background (255); 
  
  if (millis() - startTime > interval) {
    startTime = millis(); 
    okGo = true; 
  }
  
  if (okGo == true) {
    c = randomColor();  
    okGo = false; 
  }
  fill (c); 
  ellipse (width/2, height/2, 100, 100); 
}

color randomColor() {
  return color (random (255), random (255), random (255)); 
}



