Square sp1, sp2, sp3, sp4;

void setup() {
  size(200, 100);
  sp1 = new Square(10, 10, 30, 30);
  sp2 = new Square(50, 10, 30, 30);
  sp3 = new Square(90, 10, 30, 30);
  sp4 = new Square(130, 10, 30, 30);
}

void draw() {
  sp1.display();
  sp2.display();
  sp3.display();
  sp4.display();
}
