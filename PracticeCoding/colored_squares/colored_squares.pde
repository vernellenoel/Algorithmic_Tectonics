void setup() {
  size(500, 500);
  background(255);
  stroke(0);
  fill(255, 0, 0);
}

// basic graphic setup

void draw() {
  // nested loop
for (int i = 0; i < 50; i++){
  for (int j = 0; j < 50; j++){
    fill(i*10, j*10, i*8);
    rect(i*12, j*12, 10, 10);
  } 
}
}

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
