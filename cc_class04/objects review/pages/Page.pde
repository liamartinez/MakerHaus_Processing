class Page {
  color c; 
  String text; 
  
  Page(String text_) {
    c = color (random (255), random(255), random (255)); 
    text = text_; 
  }
  
  void display() {
    fill (c); 
    rect (0,0, width, height);
    textAlign (CENTER);
    textSize (30); 
    fill (255); 
    text (text, width/2, height/2); 
  }

}
