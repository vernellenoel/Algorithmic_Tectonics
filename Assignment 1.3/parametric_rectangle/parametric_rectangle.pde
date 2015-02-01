int wallWidth = 500;
int wallHeight = 100;

int rate = 8;

void setup(){
  size(800, 800);
  smooth();
  rectMode(CENTER);
}

void draw(){
  draw_wall(width/2, height/2, wallWidth, wallHeight);
}
  
void draw_wall(int x, int y, int wW, int wH){
  // x is the width/2, y is the height/2, wW is the wall width, etc.
    background(255);
    stroke(2);
    noFill();
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
  }
}
    
    
  
