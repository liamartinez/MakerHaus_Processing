import processing.serial.*;
Serial myPort;        // The serial port

float xPos = 0;             // horizontal position of the graph
void setup () {
  size(800, 600);        // window size
background(#081640);
  // List all the available serial ports
  println(Serial.list());
  String portName = Serial.list()[5];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  //
}

void serialEvent (Serial myPort) {
  // get the byte:
  int inByte = myPort.read(); 
  // print it:
  println(inByte);
  float yPos = height - inByte*10;
  // draw the line in a pretty color:
  stroke(#A8D9A7);
  line(xPos, height, xPos, height - inByte);
  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    // clear the screen by resetting the background:
    background(#081640);
  } 
  else {
    // increment the horizontal position for the next reading:
    xPos++;
  }
}

