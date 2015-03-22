// methods

String[] listFileNames(String dir) {
     File file = new File(dir);
     if (file.isDirectory()) {
      String names[] = file.list();
      return names;
     }
     else {
    // If it’s not a directory
       println("not a valid directory.");
       return null;
  }
}

//void mousePressed() {
//  if ((mouseX >= 13) && (mouseX <= 26) && (mouseY >= 640) && (mouseY <= 655)) {
//    button01 = !button01;
//  }  
//}

void stop () {
  interview01.close(); 
  interview02.close(); 
  interview03.close();
  interview04.close(); 
  interview05.close(); 
  interview06.close(); 
  interview07.close();
  
  minim.stop();
}

void movieEvent(Movie m) {
  m.read();
}

