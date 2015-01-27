// Declare and Initialize variables
float posY;

// Setup
void setup() {
  size (300, 300);
  background(255);
}

// Draw which runs continuously
void draw() {
  while (posY < height) {
    line(0,posY,width, posY);
    posY=posY+10;
  }
}
