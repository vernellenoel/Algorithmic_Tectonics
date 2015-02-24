
import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

// main sketch calling other functions

void setup() {
  size(1024, 768, OPENGL);
  smooth();
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
   
  b1 = new dBox(200.0, 4, new PVector (0,0,600), color(200, 200, 200));
  //b2 = new dBox(300.0, 4, new PVector (0,0,400), color(10, 20, 10));
}

void draw() {
  background(0);
  kinect.update();
  translate(width/2, height/2, -1000);
  rotateX(radians(180));
  translate(0, 0, 1400);
  rotateY(radians(map(mouseX, 0, width, -180, 180)));
  stroke(255, 255, 255);
  PVector[] depthPoints = kinect.depthMapRealWorld();
  int depthPointsInBox = 0;
  for (int i = 0; i < depthPoints.length; i+=8)
  {
    // PVector - A class to describe a two or three dimensional vector
    PVector currentPoint = depthPoints[i];

    if (currentPoint.x > b1.boxPosition.x - b1.boxSize/2 && currentPoint.x < b1.boxPosition.x + b1.boxSize/2)
    {
      if (currentPoint.y > b1.boxPosition.y - b1.boxSize/2 && currentPoint.y < b1.boxPosition.y + b1.boxSize/2)
      {
        if (currentPoint.z > b1.boxPosition.z - b1.boxSize/2 && currentPoint.z < b1.boxPosition.z + b1.boxSize/2)
        {
          depthPointsInBox++;
        }
      }
    }
    point(currentPoint.x, currentPoint.y, currentPoint.z);
  }

  println("depthPointsInBox: " + depthPointsInBox);

  // Set the box color's transparency
  // 0 is transparent, 1000 points is fully opaque red
  // map(value, start1, stop1, start2, stop2)
  float boxAlpha = map(depthPointsInBox, 0, 1000, 0, 255);
  rotate(0, b1.boxPosition.x, b1.boxPosition.y, b1.boxPosition.z);
  noFill();
  
  float boxSize = map(depthPointsInBox, 0, 1200, 0, 1200);
  


  if (depthPointsInBox < 100.0)
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(random(0, 255), random(0, 255), random(0, 255));
    //b1.boxSize = (map(b1.boxSize, 0, 100, 0, 100));
    b1.displayBox();
    
    //b1.moveBox(0, 00, 200);
    
  } else if (depthPointsInBox < 200.0)
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(251, 10, 214);
    //b1.boxSize = (map(depthPointsInBox, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 300.0) 
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(163, 10, 251);
    //b1.boxSize = (map(b1.boxSize, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 400.0)
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(67, 10, 251);
    //b1.boxSize = (map(b1.boxSize, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 500.0) 
  {
    
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(10, 123, 251);
    //b1.boxSize = (map(b1.boxSize, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 600.0)
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(10, 251, 169);
   // b1.boxSize = (map(b1.boxSize, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 700.0) 
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(10, 251, 27);
    //b1.boxSize = (map(b1.boxSize, 0, 1200, 0, 1200));
    b1.displayBox();
  } else if (depthPointsInBox < 800.0)
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(214, 251, 10);
    b1.displayBox();
  } else if (depthPointsInBox < 900.0) 
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(251, 129, 10);
    b1.displayBox();
  }  else 
  {
    b1.boxResolution = depthPointsInBox/12;
    b1.boxColor = color(random(0, 255), random(0, 255), random(0, 255));
    b1.displayBox();
  }
}

void mousePressed()
{
  b1.toggleBoxMove();
}
  
  
