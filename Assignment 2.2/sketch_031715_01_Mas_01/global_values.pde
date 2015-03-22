// Vernelle A. A. Noel
// Global Values
// Field Research Interview Data

Table table = loadTable("mas_designers_data2.csv", "header");
//int i;
int y_for_mouse = 550;
//PImage webImg1, webImg2, webImg3, webImg4, webImg5, webImg6, webImg7, webImg8, webImg9;
//PImage webImg10, webImg11, webImg12, webImg13, webImg14, webImg15;
//PImage tang, fred, meil, bail, dere, george, miller, morr, minsh, hack, clary;
int img_xlocation = 30;
int img_ylocation = 50;
int design_xlocation = 780;
int design_ylocation = 50;

// String[] tangkai = loadStrings("tangkai.txt");
// String[] frederick = loadStrings("frederick.txt");
// String[] meiling = loadStrings("meiling.txt");
// String[] bailey = loadStrings("bailey.txt");
// String[] derek = loadStrings("derek.txt");


// File paths and Array of strings to store data declared
String ppl_imgs_folder_path;
String [] ppl_imgsBucket;

String final_designs_path;
String [] final_designsBucket;

String audio_path;
String [] audioBucket;

String video_path;
String [] videoBucket;

String interview_txt_path;
String [] interview_txtBucket;

ppl_imgs_folder_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/sketch_031715_01_Mas_01/data/interview_ppl_imgs";
ppl_imgsBucket = listFileNames(ppl_imgs_folder_path);

for (int i = 0; i < ppl_imgsBucket.length; i++) {
  println(ppl_imgsBucket[i]);
}

final_designs_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/sketch_031715_01_Mas_01/data/interview_final_designs_imgs";
final_designsBucket = listFileNames(final_designs_path);

audio_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/sketch_031715_01_Mas_01/data/interview_audio";
audioBucket = listFileNames(audio_path);

video_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/sketch_031715_01_Mas_01/data/interview_videos";
videoBucket = listFileNames(video_path);

interview_txt_path = "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/sketch_031715_01_Mas_01/data/interview_txt";
interview_txtBucket = listFileNames(interview_txt_path);

