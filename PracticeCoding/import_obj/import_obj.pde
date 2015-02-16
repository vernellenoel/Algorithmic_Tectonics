//Vernelle Noel
// Code for importing 3D object and maipulating with mouse
// Feb 10, 2015

import processing.opengl.*;
import saito.objloader.*;

// Data type OBJModel and name of object "model"
OBJModel model;

float rotateX;
float rotateY;

// Setup environment
void setup() {
  size(800, 600, OPENGL);
  frameRate(30);
  model = new OBJModel(this, "cube.obj", "relative", TRIANGLES);
  model.enableDebug();
  
  model.scale(20); //increase the size of the object
  model.translateToCenter(); // makes object rotate around the center
  
  noStroke(); //appears without outlines
}

// Drawing environment
void draw() {
  background(200);
  lights(); //without lights wont see shadows
  
  pushMatrix(); //function saves the current coordinate system to the stack
  translate(width/2, height/2, 0);
  rotateX(rotateY); //Rotates a shape around the y-axis specified by the angle parameter
  rotateY(rotateX); //Rotates a shape around the x-axis specified by the angle parameter
  
  model.draw(); //calls the function
  
  popMatrix(); //restores the prior coordinate system
}


void mouseDragged()
{
    rotateX += (mouseX - pmouseX) * 0.01; //pmouseX contains the horizontal position of the mouse in the frame previous to the current frame
    rotateY -= (mouseY - pmouseY) * 0.01; //mouseX always contains the current horizontal coordinate of the mouse
}
  
// I dont know why the cube coming out with triangles

