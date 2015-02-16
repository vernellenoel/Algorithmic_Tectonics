import controlP5.*;
import SimpleOpenNI.*;

SimpleOpenNI kinect;

// define initial environment properties
void setup() 
	{
	size(1000, 1000);
	kinect = new SimpleOpenNI(this);

	kinect.enableDepth();
	kinect.enableRGB();
	}


	dxf export library
	computational geometry library
	loom library

declare and initialize variables



void draw() 
{
	background(0);
	kinect.update();

	image(kinect.depthImage(),0,0);
	image(kinect.rgbImage(),1000,0);
}

// create class to store information about X and relted methods
class MySurface {
	float x, y; // members

		MySurface(float xin, float yin) {// constructor
			x = xin;
			y = yin;
		}
	}
}








Create class Button
	//data types
		float posx = 0;
		float posy = 0;
		float w = 0;
		float h = 0;
		boolean on = false;

	//constructor
		Button(float x, float y, float tempW, float tempH) {
			posx = x;
			posy = y;
			w = tempW;
			h = tempH;
			on = false;
		}

	methods
void display () {

}





