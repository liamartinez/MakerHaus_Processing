
//declare
float circleSize; 
float rectSize; 

void setup () { 
  size (500, 500);
  //initialize
  circleSize = 220; 
  rectSize = 375/30; 
  background (0); 
  println ("IM NOW IN SETUP"); 
}

void draw() { 
  //background (0); 
  stroke (255); 
  println ("IM NOW IN DRAW!");
 line ( pmouseX, pmouseY,mouseX, mouseY); 
 //println ("my mouse X is here: " + mouseX + "my mouse Y is here : " + mouseY );  
}

void mousePressed () {
  //ellipse (mouseX, mouseY, 40, 40); 
  println ("MOUSEPRESSED!!!!!!!!!!!!"); 
}






