int pointCount = 400; 
int rand = 10; 
float randY = height/2; 


size (pointCount, pointCount); 
  background (0); 
  
  
for (int j = 0; j < 12; j++) {  
  for (int i = 0; i < pointCount; i++) {
    stroke (255); 
    strokeWeight (2); 
    point (((width/pointCount)*i) + mouseX, randY+random(-rand, rand)); 
    rand += random (-5, 5); 
  }
  randY = random (0, height); 
}
  

