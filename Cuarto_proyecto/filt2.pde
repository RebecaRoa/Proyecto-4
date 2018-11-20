class Filt2{
  color e = color (168, 99, 234);
  color p = color (104, 226, 234);
  int numPixel;
  
  Filt2(){
  }
  
  void estruc(){
    strokeWeight(5);
    numPixel = video.width * video.height;
    noCursor();
    smooth();
    video.start();
  }
  
  void display(){
    if (video.available()){
      video.read();
      video.loadPixels();
      int thershold = 127;
      float pixelBrightness;
      
      loadPixels();
      
      for (int i = 0; i< numPixel; i++){
        pixelBrightness = brightness(video.pixels[i]);
        if (pixelBrightness > thershold){
          pixels[i] = p;
        }
        else {
          pixels[i] = e;
        }
      }
      updatePixels();
    }
  }
}
