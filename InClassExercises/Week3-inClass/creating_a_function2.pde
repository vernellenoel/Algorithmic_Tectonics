void setup(){
  println("Hello Over there!!");
}

void draw() {
  draw_red_square(60);
}

void draw_red_square(int square_size){
  // what to do?
  fill(255, 0, 0);
  rect(width/2, height/2, square_size, square_size);
}
