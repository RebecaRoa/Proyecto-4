class Filt3{
  int cels = 5;
  int co, ro;
  
  Filt3(){
  }
  
  void estruc(){
    co = width / cels;
    ro = height / cels;
    colorMode(RGB, 255, 255, 255, 100);
    rectMode(CENTER);
    video.start();
  }
  
  void display(){
    if (video.available()){
      video.read();
      video.loadPixels();
      
      background(0);
      
      for (int i = 0; i < co; i++){
        for (int j = 0; j < ro; j++){
          
          int x = i * cels;
          int y = j * cels;
          int loc = (video.width - x - 1) + y*video.width;
          
          color c = video.pixels[loc];
          float sz = (brightness(c)/ 255.0 * cels);
          fill(random (255), random (255), random (255));
          noStroke();
          ellipse(x + cels/2, y + cels/2, sz,sz);
        }
      }
    }
  }
}
