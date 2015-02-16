//Vernelle Noel
// Making Things See - pg 62

import SimpleOpenNI.*;
SimpleOpenNI kinect;

void setup()
{
  size(640*2, 480); //to display two images side by side
  kinect = new SimpleOpenNI(this); //instantiate the SimpleOpenNI instance
  
  kinect.enableDepth(); //call these methods
  kinect.enableRGB();
}

void draw()
{
	kinect.update(); //tells the library to get fresh data from the kinect

	PImage depthImage = kinect.depthImage();
	PImage rgbImage = kinect.rgbImage();

	image(depthImage, 0, 0);
	image(rgbImage, 640, 0);
}

void mousePressed()
{
	color c = get(mouseX, mouseY); //get to access the value of any pixel that we've already drawn on the screen
	println("r: "+ red(c) + "g: " + green(c) + " b: " + blue(c));
}
  

