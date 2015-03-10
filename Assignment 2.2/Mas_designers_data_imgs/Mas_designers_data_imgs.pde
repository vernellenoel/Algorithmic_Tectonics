//Testing the loading of an excel file with
//data from field research in 2012

// Declaration of data and data types
Table table;
int i;
//String IMAGEFOLDERPATH = "\Users\vernelle_noel\Documents\GitHub\Algorithmic_Tectonics\Assignment 2.2\Mas_designers_data_imgs\data\int_images";
//String IMAGES[] = listFileNames(IMAGEFOLDERPATH);
PImage img1;

void setup() {
  size(1600, 400);
  table = loadTable("mas_designers_data2.csv", "header");
  img1 = loadImage("01.jpg");
  
}
  
  void draw() {
    //image(img1, 0, 0);
  //println(table.getRowCount() + " total rows in table"); 

  i = 0;

  for (TableRow row : table.rows ()) {

    String number = row.getString("Interview Number");
    String name = row.getString("Name of Designer");
    int experience = row.getInt("Experience in design in Carnival (yrs)");
    float time = row.getFloat("Duration of interview (hrs)");

    //println("Interview Number: " + number + "|| Name of Designer: " + name + "|| Years of Experience in Mas: " + experience + "|| Duration of interview: " + time);

    float xpos = 20+(width / table.getRowCount())*i;
    float ypos = height/2;

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
      text("DESIGNER & YEARS OF EXPERIENCE IN DESIGN IN MAS", 20, 30); 
      
      
    }

    // for each ellipse, fill according to the number in column header "color"

    i ++;
  }
  //
}

void keyPressed(){
    if (key=='1') {
      save("mas_designers_data_1.jpg");
    }
    if (key=='2') {
      save("mas_designers_data_2.jpg");
    }
    if (key=='3') {
      save("mas_designers_data_3.jpg");
    }
    if (key=='4') {
      save("mas_designers_data_4.jpg");
    }
    if (key=='5') {
      save("mas_designers_data_5.jpg");
    }
    if (key=='6') {
      save("mas_designers_data_6.jpg");
    }
}



