
//int[] ages = {10, 24, 67, 16, 12};
int [] ages = new int [100];
void setup() {
  size (400, 400); 
  for (int i=0; i < ages.length; i++) {
    ages[i] = (int) random(0, 50); 
  }
  
}

void draw() {
  background (0); 

  for (int i = 0; i < ages.length; i++) {
    text  (ages[i], 10, 20*i + 20); 
  }
  
  
  
  for (int i = 0; i < ages.length; i++) {
    if (ages[i] == 10) {
      fill (255, 0, 0); 
    } else {
      fill (255); 
    }
    ellipse (i * 70 + 20, height/2, ages[i], ages[i]); 
  }



println (min (ages)); 









}
