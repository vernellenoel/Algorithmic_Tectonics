class dBox
{

  // data  
  float   boxSize;
  int     boxResolution;
  PVector boxPosition;
  color   boxColor;  
  boolean isBoxFrozen =  false;

  // constructor
  dBox (float bSize, int bResolution, PVector bPosition, color bColor)
  {
    boxSize = bSize;
    boxResolution = bResolution;
    boxPosition = bPosition;
    boxColor = bColor;
    isBoxFrozen = false;
  }

  // methods
  void toggleBoxMove()
  {
     isBoxFrozen = !isBoxFrozen;
  }
  
    void changeBoxSize()
  {

  }
  
  void moveBox(float x, float y, float z)
  {
    if (!isBoxFrozen)
    {
      boxPosition.x = x;
      boxPosition.y = y;
      boxPosition.z = z;
    }
  }
  


  void displayBox()
  {
    pushMatrix();
      stroke(boxColor);
      sphereDetail(boxResolution);
      translate(boxPosition.x, boxPosition.y, boxPosition.z);
      //sphere(map(b1.boxSize, 0, 1200, 0, 1500));
      sphere(boxSize);
    popMatrix();
  }
}

