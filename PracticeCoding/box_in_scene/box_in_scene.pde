//Vernelle Noel
// Making Things See - pg 130
// sketch that draws a red cube in the same space as the point cloud.


import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

float rotation = 0;

//set the box size
//The cube’s size is a simple integer, and its position is a PVector with
//three components, one for each axis.
int boxSize = 150;

// a vector holding the center of the box
// Moving 600 pixels along the positive z-axis
// from that point will put our cube comfortably in the front of the point
// cloud, a few feet in front of the Kinect
PVector boxCenter = new PVector(0,0,600);

void setup() 
{
	size(1024, 768, OPENGL);
	kinect = new SimpleOpenNI(this);
	kinect.enableDepth();
}

void draw() 
{
	background(0);
	kinect.update();
//This statement will put the middle of the point cloud 1000 pixels away 
// from the screen in the negative z-direction.
//Translate specifies an amount to displace objects within the display window
	translate(width/2, height/2, -1000);

//Rotates shape around the x-axis the amount specified by the angle parameter.
	rotateX(radians(180));

	translate(0, 0, 1000);

//Rotates shape around the y-axis the amount specified by the angle parameter.
// Re-maps a number from one range to another
// map(value, start1, stop1, start2, stop2)
	rotateY(radians(map(mouseX, 0, width, -180, 180)));

	stroke(255);

	PVector[] depthPoints = kinect.depthMapRealWorld();
// Iterate over the entire array of depthPoints at increments of 10
	for (int i = 0; i < depthPoints.length; i+=10)
	{
		PVector currentPoint = depthPoints[i];

// Since these are vectors, the dot x methods can be called.
		point(currentPoint.x, currentPoint.y, currentPoint.z);
	}

	// Time to draw the cube

	// Move the box to the center
	// used the components of our boxCenter vector as
	// arguments to translate to move the coordinate system 
	// to the center of the box.
	translate(boxCenter.x, boxCenter.y, boxCenter.z);

	// set line color to red
	stroke(255, 0, 0);

	//leave the box unfilled so we can see through it
	noFill();

	//draw the box
	// syntax box(size) or
	// box(w, h, d)
	box(boxSize);
}
