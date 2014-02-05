Table table; 

void setup() {
size (400, 400); 
background (0); 
stroke (255); 
table = loadTable ("US Film Industry figures.csv", "header"); 
 for (int i = 0; i < table.getRowCount()-1; i++) {   
    String year = table.getRow(i).getString("Year");
    
    int domestic = table.getRow(i).getInt("Domestic box office revenue") * 25;
    int nextDom = table.getRow(i+1).getInt("Domestic box office revenue") *25; 
    line (width/table.getColumnCount()*i,domestic, width/table.getColumnCount()*(i+1), nextDom);
    text (str(domestic), width/table.getColumnCount()*i,300); 
  }
  
}

