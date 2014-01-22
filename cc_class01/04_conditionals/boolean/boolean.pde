
boolean isItOn; 
void setup () {
  size (300, 300);
  isItOn = false; //turned off
}

void draw() {
  background (255); 
  fill (0); 
  textSize (50); 
  if (isItOn == true) {
    text ("ON!!", width/2, height/2); 
  } else {
    text ("OFF!!", width/2, height/2); 
  }
  
}

void keyPressed() {
  isItOn = !isItOn; 
}

void mousePressed() {

}






