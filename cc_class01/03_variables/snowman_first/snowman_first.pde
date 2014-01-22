int snowManX; 
int snowManY; 
int snowManW; 
int snowManH; 

size (500, 500);

snowManX = width/3;
snowManY = 350; 
snowManH = 200; 
snowManW = 200; 

ellipse (snowManX, snowManY, snowManH, snowManW); 
ellipse (snowManX, snowManY - 150, snowManH/2, snowManW/2); 

fill (0); 
textSize (30); 
String greeting; 
greeting = "hello snowman!"; 
text (greeting, 100, 100); 



