//Vernelle Noel
// sphere is transformed when touched....

import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

float rotation = 0;

// a vector holding the center of the box
// Moving 600 pixels along the positive z-axis
// from that point will put our cube comfortably in the front of the point
// cloud, a few feet in front of the Kinect
PVector sphereCenter = new PVector(0,0,600);

void setup() 
{
  size(1024, 768, OPENGL);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth(); 
}
// I want the form to change depending on my distance from the depth sensor
void draw() 
{
  background(200);
  kinect.update();
  stroke(255, 50);
  
  int[] depthValues = kinect.depthMap();
  int depthValuesInBox = 0;

// Iterate over the entire array of depthPoints at increments of 10
  for (int i = 0; i < depthValues.length; i+=10)
  {
    int currentValue = depthValues[i];

    // Nested if statements inside of loop
    // we’re using them to check to see if each point is within the cube
    // It’s performing the same checks three times, once for each of our three axes
    if (500 > currentValue > 300)
    {
          // this adds to the value of depthPointsInBox
          depthValuesInBox++;
          //boxSize--; 
          // how do I make it such that when I touch it, it incrementally increases in size?
        }
      }
    }

// Since these are vectors, the dot x methods can be called.
    //point(currentPoint.x, currentPoint.y, currentPoint.z);
  }
  
  //Specifies an amount to displace objects within the display window
  //translate(x, y, z)
  translate(300, 300, 0);
  rotateX(mouseY * 0.05);
  rotateY(mouseX * 0.05);
  fill(mouseX * 2, 0, 160);
  //translate(sphereCenter.x, sphereCenter.y, sphereCenter.z);
  sphereDetail(mouseX / 4);
  sphere(100);
}
