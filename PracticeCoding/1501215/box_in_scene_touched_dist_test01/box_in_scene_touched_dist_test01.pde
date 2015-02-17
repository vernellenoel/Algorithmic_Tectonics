//Vernelle Noel
// Making Things See - pg 134
// red cube is filled when touched.


import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

float rotation = 0;

//set the box size
//The cube’s size is a simple integer, and its position is a PVector with
//three components, one for each axis.
//int boxSize = 300;
//sphere(300);

// a vector holding the center of the box
// Moving 600 pixels along the positive z-axis
// from that point will put our cube comfortably in the front of the point
// cloud, a few feet in front of the Kinect
//PVector boxCenter = new PVector(0,0,600);
PVector sphereCenter = new PVector(0,0,600);

// Following variable used for zooming
// start at normal
float s = 1;

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
	//rotateX(radians(180));

	//translate(0, 0, 1400);

//Rotates shape around the y-axis the amount specified by the angle parameter.
// Re-maps a number from one range to another
// map(value, start1, stop1, start2, stop2)
	//rotateY(radians(map(mouseX, 0, width, -180, 180)));

	//make everything bigger, i.e. zoom in
	translate(0, 0, s*-1000);
	//scale(s);

	//println("s: "+s);

	//stroke(255);

	//PVector[] depthPoints = kinect.depthMapRealWorld();
	
// initialize a variable for storing the total points we find inside the box on this frame
// this is related to me putting my hand or hands in the box
	//int depthPointsInBox = 0;
void mousePressed()
{
        int[] depthValues = kinect.depthMap();
        int clickPosition = mouseX + (mouseY * 640);
        int clickedDepth = depthValues[clickPosition];
        float inches = clickedDepth / 25.4;
        println("inches: " + inches);
        println("Clicked Depth: " + clickedDepth);
        save ("box_touched.jpg");
	int clickedDepthValue = 0;
}
// Iterate over the entire array of depthPoints at increments of 10
	for (int i = 0; i < depthValues.length; i+=10)
	{
		//PVector currentPoint = depthPoints[i];

		// Nested if statements inside of loop
		// we’re using them to check to see if each point is within the cube
		// It’s performing the same checks three times, once for each of our three axes
		if (clickedDepth > 600 && clickedDepth < 1200)
		{
			println("clickedDepth: " + clickedDepth);
			fill(mouseX * 2, 0, 160);
			sphereDetail(mouseX / 4);
  			sphere(300);
		}

// Since these are vectors, the dot x methods can be called.
		//point(currentPoint.x, currentPoint.y, currentPoint.z);
	}

	

	// Set the box color's transparency
	// 0 is transparent, 1000 points is fully opaque red
	//float boxAlpha = map(depthPointsInBox, 0, 1000, 0, 255);

	//translate(boxCenter.x, boxCenter.y, boxCenter.z);

	// the fourth argument to fill() is "alpha"
	// it determines the color's opacity
	// we set it based on the number of points
	//fill(255, 0, 0, boxAlpha);
	//stroke(255, 0, 0);

	//draw the box
	// syntax box(size) 
	//box(boxSize);
	
}



//use keys to control zoom
// up arrows for zoom in
// down arrows to zoom out
// s gets passed to scale() in draw()
void keyPressed()
{
	if (keyCode == 38)
	{
		s = s + 0.01;
	}
	if (keyCode == 40)
	{
		s = s - 0.01;
	}
	
}


