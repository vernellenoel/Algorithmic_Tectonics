int my_square_size = 70;

void setup(){
  println("Hello Over there!!");
}

void draw() {
  // call the function
  draw_red_square(my_square_size);
}

void draw_red_square(int square_size){
  // what to do?
  fill(255, 0, 0);
  rect(width/2, height/2, square_size, square_size);
}
