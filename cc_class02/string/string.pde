
String jabberwocky = "Twas brilling and the slithy toves did gyre and gimble in the wabe \n all morrow were the borogroves and the momeraths outgrabe"; 
PFont lSans; 
void setup() {
  size (500, 500); 
  lSans = loadFont ("LucidaSans-15.vlw"); 
}

void draw() {
  background (0); 
  textFont (lSans, 15); 
  text (jabberwocky, 20, 20); 
}
