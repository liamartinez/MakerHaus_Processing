/* Drawing */ 

//First we set the size of the sketch
size (400, 400); 

//Then we disable stroke
noStroke(); 

//We draw the ellipse by specifying first the location
//and then the width and height
ellipse (200, 200, 50, 50); 

//Before we draw the rectangle, we tell Processing to center it. 
//Ellipses are centered by default. 
rectMode (CENTER); 
//We draw an rectangle in the same way as an ellipse: 
//Coordinates, then width and height. 
rect (200, 300, 100, 50); 
