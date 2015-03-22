


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
