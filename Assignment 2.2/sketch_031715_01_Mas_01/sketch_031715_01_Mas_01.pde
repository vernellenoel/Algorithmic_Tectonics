
//Testing the loading of an excel file with
//data from field research in 2012

// Declaration of data and data types
//Table table;
//int i;
//int y_for_mouse = 550;
//PImage webImg1, webImg2, webImg3, webImg4, webImg5, webImg6, webImg7, webImg8, webImg9;
//PImage webImg10, webImg11, webImg12, webImg13, webImg14, webImg15;
//PImage tang, fred, meil, bail, dere, george, miller, morr, minsh, hack, clary;
//int img_xlocation = 30;
//int img_ylocation = 50;
//int design_xlocation = 780;
//int design_ylocation = 50;


void setup() {
  size(1600, 900);
  table = loadTable("mas_designers_data2.csv", "header");
  
  String url = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/01.jpg";
  webImg1 = loadImage(url, "jpg"); 
  
    String url2 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/02.jpg";
  webImg2 = loadImage(url2, "jpg");
  
    String url3 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/03.jpg";
  webImg3 = loadImage(url3, "jpg");
  
    String url4 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/04.jpg";
  webImg4 = loadImage(url4, "jpg");
  
    String url5 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/05.jpg";
  webImg5 = loadImage(url5, "jpg");
  
    String url6 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/06.jpg";
  webImg6 = loadImage(url6, "jpg");
  
    String url7 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/07.jpg";
  webImg7 = loadImage(url7, "jpg");
  
    String url8 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/08.jpg";
  webImg8 = loadImage(url8, "jpg");
  
    String url9 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/09.jpg";
  webImg9 = loadImage(url9, "jpg");
  
    String url10 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/10.jpg";
  webImg10 = loadImage(url10, "jpg");
  
    String url11 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/11.jpg";
  webImg11 = loadImage(url11, "jpg");
  
    String url12 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/12.jpg";
  webImg12 = loadImage(url12, "jpg");
  
    String url13 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/13.jpg";
  webImg13 = loadImage(url13, "jpg");
  
    String url14 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/14.jpg";
  webImg14 = loadImage(url14, "jpg");
  
  String url15 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs_2/data/int_images/15.jpg";
  webImg15 = loadImage(url15, "jpg");
 
   String mas1 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas1.jpg";
  tang = loadImage(mas1, "jpg");
  
  String mas2 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas2.jpg";
  fred = loadImage(mas2, "jpg");
  
  String mas3 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas3.jpg";
  meil = loadImage(mas3, "jpg");
  
  String mas4 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas4.jpg";
  bail = loadImage(mas4, "jpg");
  
  String mas5 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas5.jpg";
  dere = loadImage(mas5, "jpg");
  
  String mas6 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas6.jpg";
  george = loadImage(mas6, "jpg");
  
  String mas7 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas7.jpg";
  miller = loadImage(mas7, "jpg");
  
  String mas8 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas8.jpg";
  morr = loadImage(mas8, "jpg");
  
  String mas9 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas9.jpg";
  minsh = loadImage(mas9, "jpg");
  
  String mas10 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/sketch_031315_01_Mas_designers_data/data/int_images/mas10.jpg";
  clary = loadImage(mas10, "jpg");
  
}
  
  void draw() {

    background(0);
    fill(255);
    textSize(30);
    
    text("FIELD RESEARCH IN MAS", 30, 35);
    
    //println(mouseX + " : " + mouseY);
// String[] tangkai = loadStrings("tangkai.txt");
// String[] frederick = loadStrings("frederick.txt");
// String[] meiling = loadStrings("meiling.txt");
// String[] bailey = loadStrings("bailey.txt");
// String[] derek = loadStrings("derek.txt");
     
     // HARD CODED IN. I DO NOT LIKE, NEED TO MAKE THIS NEATER AND BASED ON THE GEOMETRY OR SOMETHING
   if ((mouseX >= 13) && (mouseX <= 26) && (mouseY >= 640) && (mouseY <= 655)) {
    //println(tangkai.length);
    println(tangkai);
    image(tang, design_xlocation, design_ylocation);
  } else if 
    ((mouseX >= 125) && (mouseX <= 139) && (mouseY >= 642) && (mouseY <= 652)) {
    println(frederick); // stuff printing multiple times. dont know why
    image(fred, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 243) && (mouseX <= 251) && (mouseY >= 644) && (mouseY <= 652)) {
    println(meiling);
    image(meil, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 352) && (mouseX <= 371) && (mouseY >= 638) && (mouseY <= 660)) {
    println(bailey);
    image(bail, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 466) && (mouseX <= 486) && (mouseY >= 640) && (mouseY <= 659)) {
    println(derek);
    image(dere, design_xlocation, design_ylocation);
  }
    else if 
    ((mouseX >= 583) && (mouseX <= 596) && (mouseY >= 642) && (mouseY <= 658)) {
    image(george, design_xlocation, design_ylocation);
  }
  
   else if 
    ((mouseX >= 697) && (mouseX <= 711) && (mouseY >= 643) && (mouseY <= 655)) {
    image(fred, design_xlocation, design_ylocation);
  }
    else if 
    ((mouseX >= 817) && (mouseX <= 818) && (mouseY >= 648) && (mouseY <= 649)) {
    image(george, design_xlocation, design_ylocation);
  }
    else if 
    ((mouseX >= 919) && (mouseX <= 943) && (mouseY >= 636) && (mouseY <= 660)) {
    image(miller, design_xlocation, design_ylocation);
  }
   else if 
    ((mouseX >= 1038) && (mouseX <= 1054) && (mouseY >= 642) && (mouseY <= 659)) {
    image(morr, design_xlocation, design_ylocation);
  }
    else if 
    ((mouseX >= 1144) && (mouseX <= 1174) && (mouseY >= 636) && (mouseY <= 663)) {
    image(minsh, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 1253) && (mouseX <= 1283) && (mouseY >= 640) && (mouseY <= 660)) {
    image(minsh, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 1365) && (mouseX <= 1387) && (mouseY >= 647) && (mouseY <= 650)) {
    image(fred, design_xlocation, design_ylocation);
  }
  else if 
    ((mouseX >= 1490) && (mouseX <= 1509) && (mouseY >= 640) && (mouseY <= 658)) {
    image(clary, design_xlocation, design_ylocation);
  }
    

  i = 0;

  for (TableRow row : table.rows ()) {

    String number = row.getString("Interview Number");
    String name = row.getString("Name of Designer");
    int experience = row.getInt("Experience in design in Carnival (yrs)");
    float time = row.getFloat("Duration of interview (hrs)");
    String date = row.getString("Date of Interview");
    
    //PImage webImg[i] = loadImage(

    //println("Interview Number: " + number + "|| Name of Designer: " + name + "|| Years of Experience in Mas: " + experience + "|| Duration of interview: " + time);

    float xpos = 20+(width / table.getRowCount())*i;
    float ypos = 650;

    float m1 = map(experience, 2, 21, 0, 100);
    float m2 = map(experience, 22, 45, 101, 200);
    float m3 = map(experience, 46, 67, 201, 255);
    fill (m1, m2, m3, 200);
    smooth();
    //noStroke();
    ellipse(xpos, ypos, 3*experience, 3*experience);
    
    fill (255);
    ellipse(xpos, ypos, 10*time, 10*time);

    if (dist(xpos, ypos, mouseX, mouseY) < experience)
    {
      fill(255);
      textSize(20);
      text(name, xpos, (ypos)-(2*experience));
      text(time + " hrs", xpos, (ypos+23)-(2*experience));
      text(date, xpos, (ypos+46)-(2*experience));
      
      fill (243,15,15);
      ellipse(xpos, ypos, 10*time, 10*time);
    }
      if (mouseX < 20) {
        image(webImg15, img_xlocation, img_ylocation);
      } else if (mouseX <= width * 1/15) {
        image(webImg1, img_xlocation, img_ylocation);    
      } else if ((mouseX <= width * 2/15) && (mouseY >= y_for_mouse)) {
        image(webImg2, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 3/15) && (mouseY >= y_for_mouse)) {
        image(webImg3, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 4/15) && (mouseY >= y_for_mouse)) {
        image(webImg4, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 5/15) && (mouseY >= y_for_mouse)) {
        image(webImg5, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 6/15) && (mouseY >= y_for_mouse)) {
        image(webImg6, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 7/15) && (mouseY >= y_for_mouse)) {
        image(webImg7, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 8/15) && (mouseY >= y_for_mouse)) {
        image(webImg8, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 9/15) && (mouseY >= y_for_mouse)) {
        image(webImg9, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 10/15) && (mouseY >= y_for_mouse)) {
        image(webImg10, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 11/15) && (mouseY >= y_for_mouse)) {
        image(webImg11, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 12/15) && (mouseY >= y_for_mouse)) {
        image(webImg12, img_xlocation, img_ylocation);
      } else if ((mouseX <= width * 13/15) && (mouseY >= y_for_mouse)) {
        image(webImg13, img_xlocation, img_ylocation);
      } else if ((mouseX >= 1490) && (mouseX <= 1509) && (mouseY >= y_for_mouse)) {
        image(webImg14, img_xlocation, img_ylocation);
      } 
      else if ((mouseX >= 1535) && (mouseX <= width)) {
        image(webImg15, img_xlocation, img_ylocation);
      }
    i ++;
  }
  //
}

void keyPressed(){
    if (key=='1') {
      save("mas_designers_data_imgs_1.jpg");
    }
    if (key=='2') {
      save("mas_designers_data_imgs_2.jpg");
    }
    if (key=='3') {
      save("mas_designers_data_imgs_3.jpg");
    }
    if (key=='4') {
      save("mas_designers_data_imgs_4.jpg");
    }
    if (key=='5') {
      save("mas_designers_data_imgs_5.jpg");
    }
    if (key=='6') {
      save("mas_designers_data_imgs_6.jpg");
    }

}



