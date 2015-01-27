

void setup() {
  background(0);
  size(500, 500);
}

void draw(){
  if (mousePressed == true) {
    random_shape_click();
  }
}

void random_shape_click(){
  //what to do?
  fill( random(255), random(255), random(255), random(255));
  rect(random(500), random(500), random(400), random(450));
}

