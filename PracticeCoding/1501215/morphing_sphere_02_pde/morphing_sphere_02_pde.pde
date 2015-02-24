//Vernelle Noel
// Code altered from Making Things See - pg 134
// Sphere changes according to points inside sphere


import processing.opengl.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

float rotation = 0;

//set the box size
//The cube’s size is a simple integer, and its position is a PVector with
//three components, one for each axis.
int boxSize = 300;

// a vector holding the center of the box
// Moving 600 pixels along the positive z-axis
// from that point will put our cube comfortably in the front of the point
// cloud, a few feet in front of the Kinect
PVector boxCenter = new PVector(0,0,600);

// Following variable used for zooming
// start at normal
float s = 1;

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

	stroke(255, 0, 0);

	PVector[] depthPoints = kinect.depthMapRealWorld();
// initialize a variable for storing the total points we find inside the box on this frame
// this is related to me putting my hand or hands in the box
	int depthPointsInBox = 0;


// Iterate over the entire array of depthPoints at increments of 10
	for (int i = 0; i < depthPoints.length; i+=10)
	{
		// Not sure what happening here
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
	float boxAlpha = map(depthPointsInBox, 0, 1000, 0, 255);

	translate(boxCenter.x, boxCenter.y, boxCenter.z);

	// the fourth argument to fill() is "alpha"
	// it determines the color's opacity
	// we set it based on the number of points
	fill(150, 0, 0, boxAlpha);
	stroke(255, 0, 0);

        if (0 < depthPointsInBox && depthPointsInBox < 100)
        {
        //fill(mouseX * 2, 0, 160);
	        stroke(251,10,21);
	        sphereDetail(depthPointsInBox / 4);
	        //sphere(300++);
			sphere(boxSize++);
			//translate(boxCenter.x, boxCenter.y, boxCenter.z);

        }
        else if (101 < depthPointsInBox && depthPointsInBox < 200)
        {
        //fill(mouseX * 2, 0, 160);
	        stroke(251,10,214);
	        sphereDetail(depthPointsInBox / 4);
			sphere(boxSize++);
        }
        else if (201 < depthPointsInBox && depthPointsInBox < 300) 
        {
        	stroke(163,10,251);
	        sphereDetail(depthPointsInBox / 4);
			sphere(boxSize++);
        }
        else if (301 < depthPointsInBox && depthPointsInBox < 400)
        {
        //fill(mouseX * 2, 0, 160);
	        stroke(67,10,251);
	        sphereDetail(depthPointsInBox / 4);
			sphere(boxSize++);
        }
        else if (401 < depthPointsInBox && depthPointsInBox < 500) 
        {
        	stroke(10,123,251);
	        sphereDetail(depthPointsInBox / 4);
			sphere(700);
        }
        else if (501 < depthPointsInBox && depthPointsInBox < 600)
        {
        //fill(mouseX * 2, 0, 160);
	        stroke(10,251,169);
	        sphereDetail(depthPointsInBox / 4);
			sphere(800);
        }
        else if (601 < depthPointsInBox && depthPointsInBox < 700) 
        {
        	stroke(10,251,27);
	        sphereDetail(depthPointsInBox / 4);
			sphere(900);
        }
        else if (701 < depthPointsInBox && depthPointsInBox < 800)
        {
        //fill(mouseX * 2, 0, 160);
	        stroke(214,251,10);
	        sphereDetail(depthPointsInBox / 4);
			sphere(1000);
        }
        else if (801 < depthPointsInBox && depthPointsInBox < 900) 
        {
        	stroke(251,129,10);
	        sphereDetail(depthPointsInBox / 4);
			sphere(1100);
        }
        else {
        stroke(255,255,255);
        sphereDetail(depthPointsInBox / 4);
        sphere(300);
        }
        if(sphereMoving)
        	{
  				sphere(800);
			}
}


//use keys to control zoom
// up arrows for zoom in
// down arrows to zoom out
// s gets passed to scale() in draw()
void keyPressed()
{
	if (keyCode == 3)
	{
		s = s + 0.01;
	}
	if (keyCode == 4)
	{
		s = s - 0.01;
	}
	
}

void mousePressed() 
{
	save ("coloredBall.jpg");
	sphereMoving = !sphereMoving;
}
// how to freeze object in air at that point in time 
// how to drop or move the object with body (skeleton)
// maybe use sound to freeze it

// Inititalize
//boolean sphereMoving;

//setup - start the shape out moving
//sphereMoving = true;

//draw


//void mousePressed()
//{
	//if the sphere is moving
	//sphereMoving = !sphereMoving;
//}
