// Vernelle A. A. Noel
// Visualizing Data - Pg 42 & 44

PImage mapImage;
Table locationTable;
Table nameTable;
int rowCount;
Table dataTable;
float dataMin = MAX_FLOAT; // built-in value which is why upper case and green
float dataMax = MIN_FLOAT;

void setup() {
  size(640, 400);
  mapImage = loadImage("map.png");
  // Make a data table from a file containing 
  // coordinates of each state
  locationTable = new Table("locations.tsv");
  // The row count will be used a lot, so store it globally.
  rowCount = locationTable.getRowCount();
  
  //Read the data table
  dataTable = new Table("random.tsv");
  nameTable = new Table("names.tsv");
  
  // Find the minimum and maximum values
  for (int row = 0; row <rowCount; row++) {
    float value = dataTable.getFloat(row, 1);
    if (value > dataMax) {
      dataMax = value; // they are both saying the same darn thing? why?
    }
    if (value < dataMin) { // I don't understand this dataMin and Max thing
      dataMin = value;
    }
  }
}

void draw() 
{
  background(255);
  image(mapImage,0,0);
  // image(img, a, b)
  // img = image to display, a and b = x and y coordinates respectively
  
  // Drawing attributes for the ellipses
  smooth();
  fill(192,0,0);
  noStroke();
  
  // Loop through rows of locations file and draw the points.
  for (int row = 0; row < rowCount; row++) {
    String abbrev = dataTable.getRowName(row);
    float x = locationTable.getFloat(abbrev, 1); // column 1
    float y = locationTable.getFloat(abbrev, 2); // column 2
    drawData(x, y, abbrev);
  } 
}

// Map the size of the ellipse to the data value
// Function
void drawData(float x, float y, String abbrev) {
  // Get data for State
  float value = dataTable.getFloat(abbrev, 1);
  
  float radius = 0;
  if (value >=0 ) {
    radius = map(value, 0, dataMax, 1.5, 15);
    // most positive numbers
    fill(#2610EE); // blue
  } else {
    radius = map(value, 0, dataMin, 1.5, 15);
    // most negative numbers
    fill(#EE1017); // red
  }
  // Modifies the location from which ellipses are drawn 
  // by changing the way in which parameters given to 
  // ellipse() are intepreted (CENTER, CORNER RADIUS)
  ellipseMode(RADIUS);
  ellipse(x, y, radius, radius);
  
  // Calculates the distance between two points
  if (dist(x, y, mouseX, mouseY) < radius+2) 
  {
    fill(0);
    textAlign(CENTER);
 
  // Show the data value and the state abbreviations in parentheses.
  // text(character to be displayed, x-coordinate, y-coordinate)
  String name = nameTable.getString(abbrev, 1);
  text(name + "(" + abbrev + ")", x, y-radius-4);
  }
}

void keyPressed(){
    if (key=='1') {
      save("US_map_centers_mouse_1.jpg");
    }
    if (key=='2') {
      save("US_map_centers_mouse_2.jpg");
    }
    if (key=='3') {
      save("US_map_centers_mouse_3.jpg");
    }
    if (key=='4') {
      save("US_map_centers_mouse_4.jpg");
    }
    if (key=='5') {
      save("US_map_centers_mouse_5.jpg");
    }
    if (key=='6') {
      save("US_map_centers_mouse_6.jpg");
    }
}














