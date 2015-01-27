void setup() {
  size(500, 500);
  background (255);
  smooth();
}

void draw() {
  noStroke();
  //start; stop; increment
  for (int y = 0; y < 500; y += 50) { 
    for (int x = 0; x < 500; x += 50) {
      fill((x+y) * 0.3); //how does this give color?
      rect(x, y, 50, 50); // size of the rectangles
      //triangle (0, 0, mouseX, mouseY, width, 0);
    }
  }
}


// export jpg
void keyPressed() {
  if (key=='1') {
    save("vern.jpg");
  }
    if (key=='2') {
    save("vern2.jpg");
  }
    if (key=='3') {
    save("vern3.jpg");
  }
    if (key=='4') {
    save("vern4.jpg");
  }
}
