/* the CSV is loaded in the data folder. I got it from: http://data.dc.gov/ */

Table table;

float countDay, countEvening; //what we want to count 


void setup() {
  size (500, 500); 
  table = loadTable("crime_incidents_2013_CSV.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

  for (int i = 0; i < table.getRowCount(); i++) {

    String shift = table.getRow(i).getString("SHIFT");
    String offense = table.getRow(i).getString("OFFENSE");
    String method = table.getRow(i).getString("METHOD");

    //println(offense + " " + method + " at " + shift);
    
    if (shift.equals("DAY")) {
      countDay++; 
    } else if (shift.equals("EVENING")) {
      countEvening++; 
    }
  }
  
  println ("day : " + countDay + " night: " + countEvening); 
}

void draw() {
  background (0); 
  
  int mCountDay = (int)map (countDay, 0, table.getRowCount(), 0, width); 
  int mCountEvening =(int) map (countEvening, 0, table.getRowCount(), 0, width); 
  
  
  fill (255); 
  rect (0, height/2 -50, mCountDay, 50); 
  rect (0, height/2, mCountEvening, 50); 
}


