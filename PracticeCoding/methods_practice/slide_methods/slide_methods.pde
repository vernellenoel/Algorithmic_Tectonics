int x1, x2;
int y1, y2;


void setup() {
  size (400, 400);
}

void draw() {
  background(0);
  slide();
  slideup();
}

void slide() {
  stroke(255);
  fill(210);
  x1=x1+5;
  y1=y1+5;
  rect(x1,y1,20,20);
  
}

void slideup() {
  stroke(255,0,0);
  fill(255, 0, 0);
  x2=x2+10;
  y2=y2+10;
  rect(x2,y2,15,15);
}
