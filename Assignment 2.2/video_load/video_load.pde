import processing.video.*;
Movie myMovie;

void setup() {
  size(1400, 900);
  myMovie = new Movie(this, "C:/Users/vernelle_noel/Documents/GitHub/Algorithmic_Tectonics/Assignment 2.2/data_buckets_test/data/interview_videos/mas_vid_2.avi");
  myMovie.play();
}

void draw() {
  //tint(255, 20);
  image(myMovie, 30, 30);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}


