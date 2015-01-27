// Declare and init


// Setup
void setup() {
  size (500, 500);
  background(255);
  stroke(0,0,0);
  fill(255,0,0);
}

// nested loop
void draw() {
  // start; stop; increment
  for (int i = 0; i<width; i++) {
    for (int j=0; j<height; j++) {
      stroke(255-i, 255-j, 0);
      point(i,j);
    }
  }
}
      
  
