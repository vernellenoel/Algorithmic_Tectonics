//Testing the loading of an excel file with
//data from field research in 2012

// Declaration of data and data types
Table table;
int i;
//String IMAGEFOLDERPATH = "\Users\vernelle_noel\Documents\GitHub\Algorithmic_Tectonics\Assignment 2.2\Mas_designers_data_imgs\data\int_images";
//String IMAGES[] = listFileNames(IMAGEFOLDERPATH);
PImage webImg1;
PImage webImg2;
PImage webImg3;
PImage webImg4;
PImage webImg5;
PImage webImg6;
PImage webImg7;
PImage webImg8;
PImage webImg9;
PImage webImg10;
PImage webImg11;
PImage webImg12;
PImage webImg13;
PImage webImg14;
PImage webImg15;



void setup() {
  size(1600, 900);
  table = loadTable("mas_designers_data2.csv", "header");
  String url = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/01.jpg";
  webImg1 = loadImage(url, "jpg"); 
  
    String url2 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/02.jpg";
  webImg2 = loadImage(url2, "jpg");
  
    String url3 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/03.jpg";
  webImg3 = loadImage(url3, "jpg");
  
    String url4 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/04.jpg";
  webImg4 = loadImage(url4, "jpg");
  
    String url5 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/05.jpg";
  webImg5 = loadImage(url5, "jpg");
  
    String url6 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/06.jpg";
  webImg6 = loadImage(url6, "jpg");
  
    String url7 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/07.jpg";
  webImg7 = loadImage(url7, "jpg");
  
    String url8 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/08.jpg";
  webImg8 = loadImage(url8, "jpg");
  
    String url9 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/09.jpg";
  webImg9 = loadImage(url9, "jpg");
  
    String url10 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/10.jpg";
  webImg10 = loadImage(url10, "jpg");
  
    String url11 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/11.jpg";
  webImg11 = loadImage(url11, "jpg");
  
    String url12 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/12.jpg";
  webImg12 = loadImage(url12, "jpg");
  
    String url13 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/13.jpg";
  webImg13 = loadImage(url13, "jpg");
  
    String url14 = "https://raw.githubusercontent.com/vernellenoel/Algorithmic_Tectonics/master/Assignment%202.2/Mas_designers_data_imgs/data/int_images/14.jpg";
  webImg14 = loadImage(url14, "jpg");
  
  String url15 = "http://caribbeanarchitecture.vernellenoel.com/ca-images/caribbean/ca-600px/vernelle_noel_caribbean-architecture-CA1004.jpg";
  webImg15 = loadImage(url15, "jpg");
  

}
  
  void draw() {
    
  //println(table.getRowCount() + " total rows in table"); 

  i = 0;

  for (TableRow row : table.rows ()) {

    String number = row.getString("Interview Number");
    String name = row.getString("Name of Designer");
    int experience = row.getInt("Experience in design in Carnival (yrs)");
    float time = row.getFloat("Duration of interview (hrs)");
    //PImage webImg[i] = loadImage(

    //println("Interview Number: " + number + "|| Name of Designer: " + name + "|| Years of Experience in Mas: " + experience + "|| Duration of interview: " + time);

    float xpos = 20+(width / table.getRowCount())*i;
    float ypos = 700;

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
      fill(0);
      textSize(20);
      text(name, xpos, (ypos)-(2*experience));
      text(time, xpos, (ypos+20)-(2*experience));
      
      textSize(30);
      text("DESIGNER & YEARS OF EXPERIENCE IN DESIGN IN MAS", (width/2)-50, 30); 
    }
    
    
      if (mouseX <= width * 1/15) {
        image(webImg1, 5, 5);
//      }
//        else {
//        image(webImg15, 5,5);
//      }
//      
      } else if (mouseX <= width * 2/15) {
        image(webImg2, 5, 5);
      } else if (mouseX <= width * 3/15) {
        image(webImg3, 5, 5);
      } else if (mouseX <= width * 4/15) {
        image(webImg4, 5, 5);
      } else if (mouseX <= width * 5/15) {
        image(webImg5, 5, 5);
      } else if (mouseX <= width * 6/15) {
        image(webImg6, 5, 5);
      } else if (mouseX <= width * 7/15) {
        image(webImg7, 5, 5);
      } else if (mouseX <= width * 8/15) {
        image(webImg8, 5, 5);
      } else if (mouseX <= width * 9/15) {
        image(webImg9, 5, 5);
      } else if (mouseX <= width * 10/15) {
        image(webImg10, 5, 5);
      } else if (mouseX <= width * 11/15) {
        image(webImg11, 5, 5);
      } else if (mouseX <= width * 12/15) {
        image(webImg12, 5, 5);
      } else if (mouseX <= width * 13/15) {
        image(webImg13, 5, 5);
      } else if (mouseX <= width * 14/15) {
        image(webImg14, 5, 5);
      } 
      else {
        image(webImg15, 5,5);
      }
    

    // for each ellipse, fill according to the number in column header "color"

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
    // restarts the simulation
    if (key == ' '){
      redraw();
  }
}



