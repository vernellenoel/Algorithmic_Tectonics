import SimpleOpenNI.*;
SimpleOpenNI kinect;

//Declaring variables 
int closestValue;
int closestX;
int closestY;

//declare global variables for previous x and y coordinates 
float lastX;
float lastY;

void setup()
{
	size(640, 480);
	kinect = new SimpleOpenNI(this);
	kinect.enableDepth();

	//start with a black background
	background(0);
}

void draw()
{
	closestValue = 8000;

	kinect.update();

	int[] depthValues = kinect.depthMap();

	for(int y = 0; y < 480; y++)
	{
		for(int x = 0; x < 640; x++)
		{
			// reverse x by moving in from the right side of the image
			int reversedX = 640-x-1;

			//use reversedX to calculate the array index
			int i = reversedX + y * 640;
			int currentDepthValue = depthValues[i];

			// only look for the closestValue within a range
			// 610mm (or 2 feet) is the minimum
			// 1525mm (or 5 feet) is the maximum
			if(currentDepthValue > 610 && currentDepthValue < 1525 && currentDepthValue < closestValue)
			{
				closestValue = currentDepthValue;
				closestX = x;
				closestY = y;
			}
		}
	}

	// linear interpolation (lerp) - smooth transition between last point and new closest point
	float interpolatedX = lerp(lastX, closestX, 0.3f);
	float interpolatedY = lerp(lastY, closestY, 0.3f);

	//set the line drawing color to red
	stroke(255,0,0);

	//make line thicker
	strokeWeight(3);

	//draw a line from the previous point to the new closest one
	line(lastX, lastY, interpolatedX, interpolatedY);

	//save the closest point as the new previous one
	lastX = interpolatedX;
	lastY = interpolatedY;
}

void mousePressed()
{
	// save image to a file then clear it from the screen
	save("drawing.jpg");
	background(0);
}