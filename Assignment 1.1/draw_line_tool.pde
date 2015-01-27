void setup(){
  size(500, 500);
  background(255);
  smooth();
}

void draw(){
stroke(0);
  // pmouseX and pmouseY are system variables that store
  // the position of the mouse in the previous frame.
  line(pmouseX, pmouseY, mouseX, mouseY);
}
