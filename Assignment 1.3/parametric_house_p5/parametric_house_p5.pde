import controlP5.*;

ControlP5 cp5;
int myColor = color(0,0,0);

int sliderValue = 100;
//int sliderTicks1 = 300;
//int sliderTicks2 = 100;
Slider abc;

int wallWidth = 500;
int wallHeight = 100;

int rate = 8;

void setup(){
  size(800, 800);
  smooth();
  rectMode(CENTER);
  cp5 = new ControlP5(this);
  
  // add horizonal slider, the value of which will be 
  // linked to the variable 'sliderValue'
  cp5.addSlider("wallWidth")
  .setPosition(100,50)
  .setSize(200,30)
  .setRange(0,700)
  ;
  
  // add a vertical slider
  
  cp5.addSlider("wallHeight")
  .setPosition(100, 100)
  .setSize(30,200)
  .setRange(0,500)
  .setValue (100)
  ;
}

void draw(){
  draw_wall(width/2, height/2, wallWidth, wallHeight);
}
  
void draw_wall(int x, int y, int wW, int wH){
  // x is the width/2, y is the height/2, wW is the wall width, etc.
    background(255);
    stroke(2);
    fill(240);
    strokeWeight(2);
    
    // draw wall
    rect(x, y, wW, wH);
    
    // draw triangle roof
    triangle( x-(wW/2), y+(wH/2), x+(wW/2), y+(wH/2), x, y+(wH*2));
}

void keyPressed(){
  
  //change wall dimensions
  
  if (key == CODED){
    if (keyCode == RIGHT){
      wallWidth += rate;
    }
    if (keyCode == LEFT){
      wallWidth -= rate;
    }
    if (keyCode == UP){
      wallHeight += rate;
    }
    if (keyCode == DOWN){
      wallHeight -= rate;
    }
    
    //export jpg
    if (key=='1') {
    save("vern.jpg");
  }
    if (key=='2') {
    save("vern2.jpg");
  }
    if (key=='3') {
    save("vern3.jpg");
  }
  }
}
    
