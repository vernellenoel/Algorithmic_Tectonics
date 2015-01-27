void setup() {
  size(500, 500);
  background (0);
  smooth();
}

void draw() {
  fill(255);
  quad (0,250, 250,0, 500,250, 250,500);
  fill (0);
  quad (125,125, 375,125, 375,375, 125,375);
}

// export jpg
void keyPressed() {
  if (key==' ') {
    save("vern.jpg");
  }
}
