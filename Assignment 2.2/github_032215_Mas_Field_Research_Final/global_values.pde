// Vernelle A. A. Noel
// Data Visualization of Field Research conducted in 2012 - 2013 on the Trinidad Carnival
// Field Research Interview Data
// Contains some real data and some placeholder data since the information is confidential


Table table;
int i;

// variables to store images of people
PImage p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14;
int num_imgs = 15; // number of images
// array of images to store imgs of people
PImage [] ppl_pic = new PImage [num_imgs];

// variables to store images of designs
PImage m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14; 
// array to store images of designs
PImage [] mas_pic = new PImage [num_imgs];

// variables to store locations frequently used to easily editing when needed
// location of image of people being interviewed
int img_xlocation = 30;
int img_ylocation = 50;

// location of images of designs
int design_xlocation = (width+750);
int design_ylocation = 50;

// min and max coordinates for circles that display information when mouse rolls over it
int circle_y_min = 640;
int circle_y_max = 655;

// buckets created but not used
String ppl_imgs_folder_path;
String [] ppl_imgsBucket;

String final_designs_path;
String [] final_designsBucket;
PImage [] final_designs;

String audio_path;
String [] audioBucket;
PImage [] audio;

String video_path;
String [] videoBucket;
PImage [] video;

String interview_txt_path;
String [] interview_txtBucket;
String [] interviews;

// loading and storing the text from the interview transcripts
// stored in an array of strings
String[] tangkai = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/01tangkai.txt");
String[] frederick = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/02frederick.txt");
String[] meiling = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/03meiling.txt");
String[] bailey = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/04bailey.txt");
String[] derek = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/05derek.txt");
String[] george = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/06george.txt");
String[] lari = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/07lari.txt");
String[] liselle = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/08liselle.txt");
String[] miller = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/09miller.txt");
String[] morris = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/10morris.txt");
String[] gulick = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/11gulick.txt");
String[] minshall = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/12minshall.txt");
String[] hackett = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/13hackett.txt");
String[] clary = loadStrings("C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_txt/14clary.txt");

//Button rect1;
//Button rect2;
//Button rect3;

boolean button01 = false;

// the data type for the audio library
Minim minim;

// audio files
AudioPlayer interview01, interview02, interview03, interview04, interview05, interview06, interview07;

// video data variables
Movie myMovie01, myMovie02, myMovie03, myMovie04, myMovie05, myMovie06, myMovie07, myMovie08, myMovie09, myMovie10, myMovie11, myMovie12, myMovie13, myMovie14;


