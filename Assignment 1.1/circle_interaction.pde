/*Vernelle A. A. Noel
Spring 2015 - Algorithmic Tectonics
Week 1 - Testing mouse, shape and color inProcessing*/


void setup() {
  size(500, 500);
  noStroke();
  smooth();
}

void draw() {
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX;
  float iy = height - mouseY;
  background (126);
  fill (255, 150);
  ellipse (x, height/2, y, y);
  fill (0, 159);
  ellipse (ix, height/2, iy, iy);
}
