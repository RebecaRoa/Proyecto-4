class Filt4{
  int cls = 9;
  int co, ro;
  
  Filt4(){
  }
  
  void estruc(){
    co = width / cls;
    ro = height / cls;
    colorMode(RGB, 255, 255, 255, 100);
    rectMode(CENTER);
    video.start();
  }
  
  void display(){
    if (video.available()){
      video.read();
      video.loadPixels();
      
      background(random (255), random (255), random (255));
      
      for (int i = 0; i < co; i++){
        for (int j = 0; j < ro; j++){
          
          int r = i * cls;
          int m = j * cls;
          int lo = (video.width - r - 1) + m*video.width;
          
          color c = video.pixels[lo];
          float sz = (brightness(c)/ 255.0 * cls);
          fill(random (255), random (255), random (255));
          stroke(0);
          strokeWeight(5);
          ellipse(r + cls/2, m + cls/2, sz,sz);
        }
      }
    }
  }
}
