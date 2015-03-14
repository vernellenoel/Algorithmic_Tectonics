int x;
int y;


void setup() {
  size (400, 400);
}

void draw() {
  background(0);
  slide();
}

void slide() {
  stroke(255);
  fill(210);
  x=x+5;
  y=y+5;
  rect(x,y,20,20);
}
  
