class Flit1{
  
  int cellSize = 13;
  int cols, rows;
  
  
  
  Flit1(){
  }
  
  void estruc(){
    cols = width / cellSize;
    rows = height / cellSize;
    colorMode(RGB, 255, 255, 255, 100);
    video.start();
    
  }
  
  void display(){
    if (video.available()) {
    video.read();
    video.loadPixels();
  
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
      
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; 
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b, 75);
      
        
        pushMatrix();
        translate(x+cellSize/2, y+cellSize/2);
        rotate((2 * PI * brightness(c) / 255.0));
        ellipseMode(CENTER);
        fill(c);
        noStroke();
        ellipse(0, 0, cellSize+6, cellSize+6);
        popMatrix();
      }
    }
  }
  }
}
