//Vernelle Noel
// Sphere changes according to points inside sphere


import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

//float rotation = 0;

//set the box size
//The cube’s size is a simple integer, and its position is a PVector with
//three components, one for each axis.
float boxSize = 200.0;

// a vector holding the center of the box
// Moving 600 pixels along the positive z-axis
// from that point will put our cube comfortably in the front of the point
// cloud, a few feet in front of the Kinect
PVector boxCenter = new PVector(0, 0, 600);

// Following variable used for zooming
// start at normal
//float s = 1;

boolean sphereMoving;

void setup() 
{
  size(1024, 768, OPENGL);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  sphereMoving = true;
}

void draw() 
{
  background(0);
  kinect.update();
  //This statement will put the middle of the point cloud 1000 pixels away 
  // from the screen in the negative z-direction.
  //Translate specifies an amount to displace objects within the display window
  translate(width/2, height/2, -1000);

  //Rotated the display so that the image was right up instead of upside down 
  rotateX(radians(180));

  // translate(left/right (x), up/down(y), forward/backward(z))
  translate(0, 0, 1400);

  //Rotates shape around the y-axis the amount specified by the angle parameter.
  // Re-maps a number from one range to another
  // map(value, start1, stop1, start2, stop2)
  rotateY(radians(map(mouseX, 0, width, -180, 180)));

  //make everything bigger, i.e. zoom in
  //------translate(0, 0, s*-1000);
  //------scale(s);

  //println("s: "+s);
  // the color of the point cloud created by the kinect
  stroke(255, 255, 255);

  PVector[] depthPoints = kinect.depthMapRealWorld();
  // initialize a variable for storing the total points we find inside the box on this frame
  // this is related to me putting my hand or hands in the box
  int depthPointsInBox = 0;

  // Iterate over the entire array of depthPoints. 
  // This affects the density of the point cloud (1 most dense as it increases gets less dense
  for (int i = 0; i < depthPoints.length; i+=8)
  {
    // PVector - A class to describe a two or three dimensional vector
    PVector currentPoint = depthPoints[i];

    // Nested if statements inside of loop
    // we’re using them to check to see if each point is within the cube
    // It’s performing the same checks three times, once for each of our three axes
    if (currentPoint.x > boxCenter.x - boxSize/2 && currentPoint.x < boxCenter.x + boxSize/2)
    {
      if (currentPoint.y > boxCenter.y - boxSize/2 && currentPoint.y < boxCenter.y + boxSize/2)
      {
        if (currentPoint.z > boxCenter.z - boxSize/2 && currentPoint.z < boxCenter.z + boxSize/2)
        {
          // this adds to the value of depthPointsInBox
          depthPointsInBox++;
          //boxSize--; 
          // how do I make it such that when I touch it, it incrementally increases in size?
        }
      }
    }

    // Since these are vectors, the dot x methods can be called.
    point(currentPoint.x, currentPoint.y, currentPoint.z);
  }

  println("depthPointsInBox: "+depthPointsInBox);

  // Set the box color's transparency
  // 0 is transparent, 1000 points is fully opaque red
  // map(value, start1, stop1, start2, stop2)
  float boxAlpha = map(depthPointsInBox, 0, 1000, 0, 255);
  rotate(0, boxCenter.x, boxCenter.y, boxCenter.z);
  translate(boxCenter.x, boxCenter.y, boxCenter.z);

  // the fourth argument to fill() is "alpha"
  // it determines the color's opacity
  // we set it based on the number of points
  // fill(r, g, b, alpha)
  //fill(150, 0, 0, boxAlpha);
  noFill();
  //stroke(255, 0, 0);

  if (mousePressed == true) {
    sphereMoving = true;
  }

  if (depthPointsInBox < 100.0)
  {
    stroke(random(0, 255), random(0, 255), random(0, 255));
    sphereDetail(depthPointsInBox / 12);
    //sphere(300++);
    sphere(250);
    //translate(boxCenter.x, boxCenter.y, boxCenter.z);
  } else if (depthPointsInBox < 200.0)
  {
    stroke(251, 10, 214);
    sphereDetail(depthPointsInBox / 12);
    sphere(400);
  } else if (depthPointsInBox < 300.0) 
  {
    stroke(163, 10, 251);
    sphereDetail(depthPointsInBox / 12);
    sphere(500.0);
  } else if (depthPointsInBox < 400.0)
  {
    //fill(mouseX * 2, 0, 160);
    stroke(67, 10, 251);
    sphereDetail(depthPointsInBox / 12);
    sphere(600.0);
  } else if (depthPointsInBox < 500.0) 
  {
    stroke(10, 123, 251);
    sphereDetail(depthPointsInBox / 12);
    sphere(700.0);
  } else if (depthPointsInBox < 600.0)
  {
    stroke(10, 251, 169);
    sphereDetail(depthPointsInBox / 12);
    sphere(800.0);
  } else if (depthPointsInBox < 700.0) 
  {
    stroke(10, 251, 27);
    sphereDetail(depthPointsInBox / 12);
    sphere(900.0);
  } else if (depthPointsInBox < 800.0)
  {
    //fill(mouseX * 2, 0, 160);
    stroke(214, 251, 10);
    sphereDetail(depthPointsInBox / 12);
    sphere(1000.0);
  } else if (depthPointsInBox < 900.0) 
  {
    stroke(251, 129, 10);
    sphereDetail(depthPointsInBox / 12);
    sphere(1100.0);
  } else if (mouseButton == RIGHT) 
  {
    fill(255);
  } else 
  {
    stroke(random(0, 255), random(0, 255), random(0, 255));
    sphereDetail(depthPointsInBox / 12);
    sphere(boxSize);
  }
}

void keyPressed()
{
  if (key=='1') {
    save("dancing_ball_1.jpg");
  }
  if (key=='2') {
    save("dancing_ball_2.jpg");
  }
  if (key=='3') {
    save("dancing_ball_3.jpg");
  }
  if (key=='4') {
    save("dancing_ball_4.jpg");
  }
  if (key=='5') {
    save("dancing_ball_5.jpg");
  }
  if (key=='6') {
    save("dancing_ball_6.jpg");
  }
}


// how to freeze object in air at that point in time 
// how to drop or move the object with body (skeleton)
// maybe use sound to freeze it

// Inititalize
//boolean sphereMoving;

//setup - start the shape out moving
//sphereMoving = true;

//draw

