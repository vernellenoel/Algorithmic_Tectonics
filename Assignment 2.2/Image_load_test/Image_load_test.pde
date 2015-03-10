PImage webImg;

void setup() {
  size(650, 500);
  String url = "http://caribbeanarchitecture.vernellenoel.com/ca-images/caribbean/ca-600px/vernelle_noel_caribbean-architecture-CA1004.jpg";
  // Load image from a web server
  webImg = loadImage(url, "jpg");
}

void draw() {
  background(0);
  image(webImg, 20, 20);
}
