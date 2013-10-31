
boolean isOn; 

void setup() {
  size(500, 500); 
  isOn = false;
}

void draw() {

  background (0); 
  
  textAlign (CENTER); 
  if (isOn == true) {
    textSize (100);
    text ("ON!", width/2, height/2);
  } 
  else {
    textSize (20);
    text ("OFF!", width/2, height/2);
  }
}

void keyPressed() {
  isOn = !isOn; 
  /*  
  this is the longer version of saying: 
  if (isOn == true) {
    isOn = false; 
  } else if (isOn == false) {
    isOn = true; 
  }
  */
  
}

