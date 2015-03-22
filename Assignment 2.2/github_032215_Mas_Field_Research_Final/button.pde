// Vernelle A. A. Noel
// Data Visualization of Field Research conducted in 2012 - 2013 on the Trinidad Carnival
// Field Research Interview Data
// Contains some real data and some placeholder data since the information is confidential

// This was not used 

class Button {
  int x, y; // coordinates
  int wide;
  int high;
  color fill_color = color(102);
  color highlight = color(153);
  boolean over = false;
  boolean pressed = false;
  boolean locked = false;


  Button(int tempx, int tempy, int temp_wide, int temp_high, color temp_col) {
    x = tempx;
    y = tempy;
    wide = temp_wide;
    high = temp_high;
    fill_color = temp_col;
  }


  boolean pressed() {
    if (over) {
      locked = true;
      return true;
    } else {
      locked = false;
      return false;
    }
  }

  boolean over() { 
    return true;
  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }

//  class RectButton extends Button {
//    RectButton(int ix, int iy, int iwide, int ihigh, color ifill) {
//      x = ix;
//      y = iy;
//      wide = iwide;
//      high = ihigh;
//      fill_color = ifill;
//    }
//
//    boolean over() {
//      if (overRect(x, y, size, size) ) {
//        over = true;
//        return true;
//      } else {
//        over = false;
//        return false;
//      }
//    }
//}
    //  void mouseClicked() {
    //    if ((mouseX >= rect1.x && mouseX <= rect1.x+width) && (mouseY >= rect1.y && mouseY <= rect1.y+height)) {
    //      println(tangkai);
    //    } else if
    //      ((mouseX >= rect2.x && mouseX <= rect2.x+width) && (mouseY >= rect2.y && mouseY <= rect2.y+height)) {
    //      println(frederick);
    //    } else if
    //      ((mouseX >= rect3.x && mouseX <= rect3.x+width) && (mouseY >= rect3.y && mouseY <= rect3.y+height)) {
    //      println(meiling);
    //    }
    //  }

    void display() {
      rect(x, y, wide, high);
      fill(fill_color);
    }
  }


