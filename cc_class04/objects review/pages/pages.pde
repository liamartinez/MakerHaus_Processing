Page [] pages = new Page [5];
String [] words = {
  "once upon a time", "and then", "something happened", "it was amazing", "the end"
};

int pageNum = 0; 

void setup() {
  size (400, 400); 
  for (int i = 0; i < pages.length; i++) {
    pages[i] = new Page (words[i]);
  }
}

void draw() {
  switch (pageNum) {
  case 0:
    pages[0].display(); 
    break;
  case 1:
    pages[1].display(); 
    break;
  case 2:
    pages[2].display(); 
    break;
  case 3:
    pages[3].display(); 
    break;
  case 4:
    pages[4].display(); 
    break;
  }
}

void mousePressed() {
  if (pageNum < pages.length) {
    pageNum ++;
  } else {
    pageNum = 0; 
  }

}

