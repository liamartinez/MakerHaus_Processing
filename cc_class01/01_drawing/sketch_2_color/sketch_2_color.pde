/* Color */ 

// colors for shapes are specified with fill(). 
// there are a few ways that we can specify color. 


size (1200, 200); 
noStroke();

//fill (Red, Green, Blue)
fill (200, 100, 100); 
ellipse (100, 100, 50, 50); 

//fill (#hex)
fill (#C86464); 
ellipse (300, 100, 50, 50); 

//fill (color)
color red = color (200, 100, 100); 
fill (red); 
ellipse (500, 100, 50, 50); 

//fill (gray)
fill (100); 
ellipse (700, 100, 50, 50); 

//fill (gray, alpha); 
fill (100, 50); 
ellipse (900, 100, 50, 50); 
ellipse (925, 100, 50, 50); 

//fill (r, g, b, alpha);
fill (100, 0, 0, 50); 
ellipse (1100, 100, 50, 50); 
fill (0, 100, 0, 50); 
ellipse (1125, 100, 50, 50); 
