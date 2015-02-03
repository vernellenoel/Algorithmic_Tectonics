void setup() {
  size(500, 500);
  background (255);
  smooth();
}

void draw() {
stroke(0);
for (int i=20; i<500; i+=5) {
  line(20, i, 480, i+15);
}

strokeWeight (1);
stroke(204, 102, 0);
for (int i=50; i<500; i+=15) {
  line(10, i, 500, i+40);
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
