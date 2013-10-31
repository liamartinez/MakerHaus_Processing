int pointCount = 400; 
int rand = 10; 
int randY = height/2; 


size (pointCount, pointCount); 
  background (0); 
  
  for (int i = 0; i < pointCount; i++) {
    stroke (255); 
    strokeWeight (5); 
    point (((width/pointCount)*i) + mouseX, (height/2)+random(-rand, rand)); 
    rand += random (-5, 5); 
  }
  

