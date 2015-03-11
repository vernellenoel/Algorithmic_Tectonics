  class Square {
    float x, y; // coordinates
    int wide;
    int high;

    // COnstructor
    Square(float tempx, float tempy, int temp_wide, int temp_high) {
      x = tempx;
      y = tempy;
      wide = temp_wide;
      high = temp_high;
    }

    void display() {
      rect(x, y, wide, high);
    }
  }


