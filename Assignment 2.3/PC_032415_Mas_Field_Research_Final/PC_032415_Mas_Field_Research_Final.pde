// Vernelle A. A. Noel
// Data Visualization of Field Research conducted in 2012 - 2013 on the Trinidad Carnival
// Field Research Interview Data
// Contains some real data and some placeholder data since the information is confidential

import ddf.minim.*; // audio library
import processing.video.*; // video library


void setup() {

  size(1920, 1080);
  
  // creating new movie (video) objects that store video files
  myMovie01 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/01macfarlane.avi");
  myMovie02 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/02frederick.avi");
  myMovie03 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/03meiling.avi");
  myMovie04 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/04bailey.avi");
  myMovie05 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/05derek.avi");
  myMovie06 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/06george.avi");
  myMovie07 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/07lari.avi");
  myMovie08 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/08liselle.avi");
  myMovie09 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/09miller.avi");
  myMovie10 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/10morris.avi");
  myMovie11 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/11gulick.avi");
  myMovie12 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/12minshall.avi");
  myMovie13 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/13hackett.avi");
  myMovie14 = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/14clary.avi");


// audio library and data storing placeholder audio that should in reality store the audio from the interviews
  minim = new Minim(this);
  interview01 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_01.mp3");
  interview02 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_02.mp3");
  interview03 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_03.mp3");
  interview04 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_04.mp3");
  interview05 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_05.mp3");
  interview06 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_06.mp3");
  interview07 = minim.loadFile("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio/interview_07.mp3");

  
  //  rect1 = new Button(30, 700, 20, 20, (color(239, 19, 129)));
  //  rect2 = new Button(30, 750, 20, 20, (color(30, 174, 44)));
  //  rect3 = new Button(30, 800, 20, 20, (color(92, 120, 255)));


  // Loading the excel csv file that tabular data is stored in
  table = loadTable("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/mas_designers_data2.csv", "header");

// *********This is pulls in the location of the images and stores them, but I don't see how I get to print the data in those files*******
  ppl_imgs_folder_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs";
  ppl_imgsBucket = listFileNames(ppl_imgs_folder_path);

// ************* Here I load images of the people interviewed and store them in a variable. How do I make this more dynamic so that the images are stored in a variable like p[i]?***********
  p0 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/01.jpg");
  p1 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/02.jpg");
  p2 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/03.jpg");
  p3 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/04.jpg");
  p4 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/05.jpg");
  p5 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/06.jpg");
  p6 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/07.jpg");
  p7 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/08.jpg");
  p8 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/09.jpg");
  p9 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/10.jpg");
  p10 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/11.jpg");
  p11 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/12.jpg");
  p12 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/13.jpg");
  p13 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/14.jpg");
  p14 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_ppl_imgs/15.jpg");

// I then store them in indices
  ppl_pic[0] = p0;
  ppl_pic[1] = p1;
  ppl_pic[2] = p2;
  ppl_pic[3] = p3;
  ppl_pic[4] = p4;
  ppl_pic[5] = p5;
  ppl_pic[6] = p6;
  ppl_pic[7] = p7;
  ppl_pic[8] = p8;
  ppl_pic[9] = p9;
  ppl_pic[10] = p10;
  ppl_pic[11] = p11;
  ppl_pic[12] = p12;
  ppl_pic[13] = p13;
  ppl_pic[14] = p14;

// Here I load images of the designs by the designers
  m0 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas01.jpg");
  m1 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas02.jpg");
  m2 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas03.jpg");
  m3 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas04.jpg");
  m4 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas05.jpg");
  m5 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas06.jpg");
  m6 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas07.jpg");
  m7 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas08.jpg");
  m8 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas09.jpg");
  m9 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas10.jpg");
  m10 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas11.jpg");
  m11 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas12.jpg");
  m12 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas13.jpg");
  m13 = loadImage("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs/mas14.jpg");

// indexing of images of the designs
  mas_pic[0] = m0;
  mas_pic[1] = m1;
  mas_pic[2] = m2;
  mas_pic[3] = m3;
  mas_pic[4] = m4;
  mas_pic[5] = m5;
  mas_pic[6] = m6;
  mas_pic[7] = m7;
  mas_pic[8] = m8;
  mas_pic[9] = m9;
  mas_pic[10] = m10;
  mas_pic[11] = m11;
  mas_pic[12] = m12;
  mas_pic[13] = m13;


  //interview_txtBucket[0] = 
  //
  //  for (int i = 0; i < ppl_pic.length; i++) {
  //    println(ppl_imgsBucket[i]);
  //
  //  

  final_designs_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_final_designs_imgs";
  final_designsBucket = listFileNames(final_designs_path);

  for (int i = 0; i < final_designsBucket.length; i++) {
    //println(final_designsBucket[i]);
  }

  audio_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_audio";
  audioBucket = listFileNames(audio_path);

  for (int i = 0; i < audioBucket.length; i++) {
    //println(audioBucket[i]);
  }

  video_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos";
  videoBucket = listFileNames(video_path);

  for (int i = 0; i < videoBucket.length; i++) {
    //println(videoBucket[i]);
  }

  interview_txt_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt";
  interview_txtBucket = listFileNames(interview_txt_path);

  for (int i = 0; i < interview_txtBucket.length; i++) {
    //println(interview_txtBucket[i]);
  }
}

void draw() {
  background(0);
  
  // text on the screen
  fill(255);
  textSize(30);
  text("FIELD RESEARCH IN MAS", 30, 35);
  textSize(23);
  text("INTERVIEWEE", 30, 550);
  text("DESIGN", design_xlocation, 550);
  text("VIDEO", 1470, 550);

  //println(mouseX + " : " + mouseY);
  //  rect1.display();
  //  rect2.display();
  //  rect3.display();

// for the particular mouse location the images of those interviewed, an image of their design, 
// a print out of the transcript of their interview, audio of the interview, and video is called 
  if ((mouseX >= 13) && (mouseX <= 30) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[0], img_xlocation, img_ylocation);
    image(mas_pic[0], design_xlocation, design_ylocation);
    // prints out interview to console
    println(tangkai);
    // plays only the interview that should be playing and pauses the others
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    // plays the matching interview audio
    interview01.play();
    //    myMovie02.pause();
    //    myMovie03.pause();
    // loads, locates and sizes the video to be played
    image(myMovie01, 1470, 50, 700, 387);
    //plays video on loop
    myMovie01.loop();
    
  } else if ((mouseX >= 137) && (mouseX <= 149) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[1], img_xlocation, img_ylocation);
    image(mas_pic[1], design_xlocation, design_ylocation);
    println(frederick); // stuff printing multiple times. dont know why
    interview01.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview02.play();
    //    myMovie01.pause();
    //    myMovie03.pause();
    image(myMovie02, 1470, 50, 700, 312);
    myMovie02.loop();
    
  } else if ((mouseX >= 250) && (mouseX <= 260) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[2], img_xlocation, img_ylocation);
    image(mas_pic[2], design_xlocation, design_ylocation);
    println(meiling); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview03.play();
    //    myMovie01.pause();
    //    myMovie02.pause();
    image(myMovie03, 1470, 50, 700, 312);
    myMovie03.loop();
    
  } else if ((mouseX >= 357) && (mouseX <= 385) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[3], img_xlocation, img_ylocation);
    image(mas_pic[3], design_xlocation, design_ylocation);
    println(bailey); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview04.play();
    image(myMovie04, 1470, 50, 700, 398);
    myMovie04.loop();
    
  } else if ((mouseX >= 474) && (mouseX <= 497) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[4], img_xlocation, img_ylocation);
    image(mas_pic[4], design_xlocation, design_ylocation);
    println(derek); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview06.pause();
    interview07.pause();
    interview05.play();
    image(myMovie05, 1470, 50, 700, 434);
    myMovie05.loop();
    
  } else if ((mouseX >= 592) && (mouseX <= 606) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[5], img_xlocation, img_ylocation);
    image(mas_pic[5], design_xlocation, design_ylocation);
    println(george); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview07.pause();
    interview06.play();
    image(myMovie06, 1470, 50, 700, 383);
    myMovie06.loop();
    
  } else if ((mouseX >= 706) && (mouseX <= 726) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[6], img_xlocation, img_ylocation);
    image(mas_pic[6], design_xlocation, design_ylocation);
    println(lari); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.play();
    image(myMovie07, 1470, 50, 700, 312);
    myMovie07.loop();
    
  } else if ((mouseX >= 820) && (mouseX <= 837) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[7], img_xlocation, img_ylocation);
    image(mas_pic[7], design_xlocation, design_ylocation);
    println(liselle); // stuff printing multiple times. dont know why
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview01.play();
    image(myMovie08, 1470, 50, 700, 383);
    myMovie08.loop();
    
  } else if ((mouseX >= 928) && (mouseX <= 953) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[8], img_xlocation, img_ylocation);
    image(mas_pic[8], design_xlocation, design_ylocation);
    println(miller); // stuff printing multiple times. dont know why
    interview01.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview02.play();
    image(myMovie09, 1470, 50, 700, 398);
    myMovie09.loop();
    
  } else if ((mouseX >= 1046) && (mouseX <= 1063) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[9], img_xlocation, img_ylocation);
    image(mas_pic[9], design_xlocation, design_ylocation);
    println(morris); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview03.play();
    image(myMovie10, 1470, 50, 700, 398);
    myMovie10.loop();
    
  } else if ((mouseX >= 1152) && (mouseX <= 1186) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[10], img_xlocation, img_ylocation);
    image(mas_pic[10], design_xlocation, design_ylocation);
    println(gulick); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview05.pause();
    interview06.pause();
    interview07.pause();
    interview04.play();
    image(myMovie11, 1470, 50, 700, 532);
    myMovie11.loop();
    
  } else if ((mouseX >= 1273) && (mouseX <= 1297) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[11], img_xlocation, img_ylocation);
    image(mas_pic[11], design_xlocation, design_ylocation);
    println(minshall); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview06.pause();
    interview07.pause();
    interview05.play();
    image(myMovie12, 1470, 50, 700, 526);
    myMovie12.loop();
    
  } else if ((mouseX >= 1385) && (mouseX <= 1408) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[12], img_xlocation, img_ylocation);
    image(mas_pic[12], design_xlocation, design_ylocation);
    println(hackett); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview07.pause();
    interview06.play();
    image(myMovie13, 1470, 50, 700, 312);
    myMovie13.loop();
    
  } else if ((mouseX >= 1492) && (mouseX <= 1528) && (mouseY >= circle_y_min) && (mouseY <= circle_y_max)) {
    image(ppl_pic[13], img_xlocation, img_ylocation);
    image(mas_pic[13], design_xlocation, design_ylocation);
    println(clary); // stuff printing multiple times. dont know why
    interview01.pause();
    interview02.pause();
    interview03.pause();
    interview04.pause();
    interview05.pause();
    interview06.pause();
    interview07.play();
    image(myMovie14, 1470, 50, 700, 514);
    myMovie14.loop();
  }




  //    
  //    if ((mouseX >= rect1.x && mouseX <= rect1.x+width) && (mouseY >= rect1.y && mouseY <= rect1.y+height)) {
  //      rect1.mouseClicked();
  //      println(tangkai);
  //    } 
  //    if ((mouseX >= rect2.x && mouseX <= rect2.x+width) && (mouseY >= rect2.y && mouseY <= rect2.y+height)) {
  //      rect2.mouseClicked();
  //      println(frederick);
  //    } 
  //    if ((mouseX >= rect3.x && mouseX <= rect3.x+width) && (mouseY >= rect3.y && mouseY <= rect3.y+heigRowCount())*5;



  i = 0;

  for (TableRow row : table.rows ()) {

    // Gets the string in that particular row and stores it in a variable via a for loop
    String number = row.getString("Interview Number");
    String name = row.getString("Name of Designer");
    int experience = row.getInt("Experience in design in Carnival (yrs)");
    float time = row.getFloat("Duration of interview (hrs)");
    String date = row.getString("Date of Interview");
    String title = row.getString("Area of Expertise");

// I was trying something here but I wasn't able to figure it out in time. 
// I was trying to capture and store the location (int) of the circles to use instead of hard coding them

    float[] xnums = new float[table.getRowCount()];
    xnums[0] = 30;
    xnums[1] = 30 + ((1600) / table.getRowCount())*1;
    xnums[2] = 30 + ((1600) / table.getRowCount())*2;
    xnums[3] = 30 + ((1600) / table.getRowCount())*3;

    float xpos = 30 + ((1600) / table.getRowCount())*i;
    float ypos = 650;

// constructing the circle that displays their years of experience in design
    float m1 = map(experience, 2, 21, 0, 100); // relating their experience to size
    float m2 = map(experience, 22, 45, 101, 200);
    float m3 = map(experience, 46, 67, 201, 255);
    fill (m1, m2, m3, 200);
    smooth();
    //noStroke();
    ellipse(xpos, ypos, 3*experience, 3*experience);

// construction of circle that displays the length of time of the interview
    fill (255);
    ellipse(xpos, ypos, 10*time, 10*time);
    stroke(255);
    //line(xpos, ypos, xpos, 0);

// Text to display when use hovers over the circle
    if (dist(xpos, ypos, mouseX, mouseY) < experience)
    {
      fill(255);
      textSize(20);
      text(name, xpos, 775);
      text(title, xpos, 800);
      text(time + " hrs", xpos, 825);
      text(date, xpos, 850);

      fill (243, 15, 15);
      ellipse(xpos, ypos, 10*time, 10*time);
    }
    i++;

    //     if(!button01) {
    //       println(tangkai);
    //     } else {
    //       println(meiling);
    //     }
  }
}


