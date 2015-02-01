void setup() {
  println("a");
  functionA();
  println("b");
}

void draw() {
  println("c");
  functionB();
  println("d");
  functionA();
  noLoop();
}

void functionA() {
  println("e");
  println("f");
}

void functionB() {
  println("g");
  functionA();
  println("h");
}








