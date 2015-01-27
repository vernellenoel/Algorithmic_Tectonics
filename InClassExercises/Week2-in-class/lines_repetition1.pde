void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  rect (50, 50, 350, 350);
  ellipseMode(CENTER);
  ellipse (225, 225, 200, 200);
  line (50, 50, 400, 400);
  line (50, 400, 400, 50);
  
}

// export jpg
void keyPressed() {
  if (key==' ') {
    save("vern.jpg");
  }
}
