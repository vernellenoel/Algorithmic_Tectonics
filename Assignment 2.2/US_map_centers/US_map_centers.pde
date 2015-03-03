PImage mapImage;
Table locationTable;
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
  // Re-map the value to a number between 2 and 40
  // converts numbers from one range to another
  float mapped = map(value, dataMin, dataMax, 2, 40);
  // Draw an ellipse for this item
  ellipse(x, y, mapped, mapped);
}

void keyPressed(){
    if (key=='1') {
      save("US_map_centers_1.jpg");
    }
    if (key=='2') {
      save("US_map_centers_2.jpg");
    }
    if (key=='3') {
      save("US_map_centers_3.jpg");
    }
    if (key=='4') {
      save("US_map_centers_4.jpg");
    }
    if (key=='5') {
      save("US_map_centers_5.jpg");
    }
    if (key=='6') {
      save("US_map_centers_6.jpg");
    }
}














