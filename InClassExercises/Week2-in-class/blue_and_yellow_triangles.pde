void setup() {
  size(500, 500);
  background (255);
  smooth();
//int point X;
  //int point Y;
}

/*void draw() {
  fill(255, 204, 0);
  triangle (0, 0, width/2, 100, width, 0);
  fill (0, 0, 255);
  triangle (0, height, width/2, 100, width, height);
}
*/

void draw() {
  background (255);
  fill(255, 204, 0);
  triangle (0, 0, mouseX, mouseY, width, 0);
  fill (0, 0, 255);
  triangle (0, height, mouseX, mouseY, width, height);
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


