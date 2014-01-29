int [] amountPeople = {50, 70, 90, 10, 45}; 

void setup() {
  size (500, 300); 
}

void draw() {  
  ellipseMode (CENTER); 
  for (int i = 0; i < amountPeople.length; i++) {
    ellipse (i*width/amountPeople.length + (width/amountPeople.length)/2, height/2, amountPeople[i],amountPeople[i]); 
  }
}

