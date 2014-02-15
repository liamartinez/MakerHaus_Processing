
#define LED 13
#define BUTTON 2

int val = 0; 
int old_val = 0; 
boolean isOn; 

void setup() {
  pinMode (LED, OUTPUT); 
  pinMode (BUTTON, INPUT); 
}

void loop() {

  val = digitalRead(BUTTON);
  
  if (val == HIGH && old_val == LOW ) {
    isOn = !isOn; 
  } 
  
  old_val = val;
  
  if (isOn) {
    digitalWrite (LED, HIGH); 
  } else {
    digitalWrite (LED, LOW); 
  }

}
