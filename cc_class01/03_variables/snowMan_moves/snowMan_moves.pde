  int snowManX; 
int snowManY; 
int snowManW; 
int snowManH; 

int grey = 0; 

//things happen once
void setup() {

  size (500, 500);
  snowManX = 100;
  snowManY = 350; 
  snowManH = 200; 
  snowManW = 200; 

  int snowManX = width/3;
  
  println ("IM IN SETUP"); 
  
  
}

//things loop 
void draw() {
  background (255); 
  
  fill (grey); 
  grey = grey + 1; 
  ellipse (snowManX, snowManY, snowManH, snowManW); 
  ellipse (snowManX, snowManY - 150, snowManH/2, snowManW/2); 
  snowManX = snowManX + 1; 
  
  snowManX++; //the same as snowManX + 1; 
  //snowManX+=3; //another shortcut
  
  fill (0); 
  textSize (30); 
  String greeting; 
  greeting = "hello snowman!"; 
  text (greeting, 100, 100);
  println ("IM IN DRAW!!!!!"); 
}

