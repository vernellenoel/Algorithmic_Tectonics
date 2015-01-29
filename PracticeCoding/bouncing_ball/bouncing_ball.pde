
// declare and initialize variables
int posx = 0;
int posy = 0;
int incrementx = 5;
int incrementy = 2;

// setup size of canvas, stroke width, fill color
void setup(){
  size(500, 500);
  stroke(0);
  fill(255);
  posx = (int)random(0, width);
  posy = (int)random(0, height);
}

// draw function that continues to run
void draw(){
  background(0);

  if ((posx > width) || (posx < 0)){
    incrementx *= -1;
  } 
  if ((posy > height)||(posy<0)){
    incrementy *= -1; 
  }
  
  posx = posx + incrementx;
  posy = posy + incrementy;
  ellipse(posx, posy, 15, 15);

}

void keyPressed() {
  if (key=='1') {
    save("vern.jpg");
  }
    if (key=='2') {
    save("vern2.jpg");
  }
    if (key=='3') {
    save("vern3.jpg");
  }
    if (key=='4') {
    save("vern4.jpg");
  }
}
