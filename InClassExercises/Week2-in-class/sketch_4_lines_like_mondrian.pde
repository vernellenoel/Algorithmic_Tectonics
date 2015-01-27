void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  rect (50, 50, 350, 350);
  line (300, 50, 300, 400);
  line (50, 225, 400, 225);
  line (50, 275, 400, 275);
  line (50, 325, 400, 325);
}

// export jpg
void keyPressed() {
  if (key==' ') {
    save("vern.jpg");
  }
}
