import SimpleOpenNI.*;
SimpleOpenNI kinect;

void setup()
{
	size(640, 480);
	kinect = new SimpleOpenNI(this);
	kinect.enableDepth();
}

void draw()
{
	kinect.update();

	PImage depthImage = kinect.depthImage();
	image (depthImage, 0, 0);
}

void mousePressed()
{
	int[] depthValues = kinect.depthMap(); //values returned stored as an array of integers
	int clickPosition = mouseX + (mouseY * 640); // the position in the array of a given pixel
	int clickedDepth = depthValues[clickPosition]; //uses above result as an index to access the array

	float inches = clickedDepth / 25.4;

	println("mm: " + clickedDepth + "inches: " + inches);
}