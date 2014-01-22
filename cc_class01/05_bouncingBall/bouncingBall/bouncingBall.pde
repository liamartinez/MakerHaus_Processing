int ballX, ballY, ballSize;
int speed; 

void setup () {
  size (400, 400); 
  noStroke(); 
  ballX = 50; 
  ballY = height/2; 
  ballSize = 20; 
  speed = 3; 
}


void draw() {
  background (255); 
  fill (0); 
  ellipse (ballX, ballY, ballSize, ballSize); 
 
  if (ballX > width || ballX < 0) {
     speed = speed * -1;
  } 
  ballX+=speed;
  println (ballX); 
}
