float posX = 0;
float posY = 0;
float r = 0;
float g = 0;
float b = 0;
float a = 0;
float side = 0;

void setup(){
 size(500, 500); 
 background(255);
 frameRate(100);
 smooth();
}

void draw(){
  posX = random(0, width);
  posY = random(0, height);
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  side = random(10, 60);
  stroke(0);
  fill(r, g, b, a);
  rect(posX, posY, side, side);  
}

// export jpg
void keyPressed() {
  if (key==' ') {
    save("vern.jpg");
  }
}
