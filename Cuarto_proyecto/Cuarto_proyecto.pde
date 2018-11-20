import processing.video.*;
int sele = 0;
PFont titulo, instr;
PImage f1, f2, f3, f4;

Pantalla pantallas;
Capture video;
Flit1 fli;
Filt2 fli2;
Filt3 fli3;
Filt4 fli4;

void setup(){
  size(640, 480);
  frameRate(30);
  pantallas = new Pantalla();
  titulo = loadFont("Young&Beautiful-48.vlw");
  instr = loadFont("InformalRoman-Regular-48.vlw");
  f1 = loadImage("foto1.tif");
  f2 = loadImage("foto2.tif");
  f3 = loadImage("foto3.tif");
  f4 = loadImage("foto4.tif");
 video = new Capture(this, width, height);
 fli = new Flit1();
 fli2 = new Filt2();
 fli3 = new Filt3();
 fli4 = new Filt4();

 
}

void draw (){
 pantallas.display();
}

void keyPressed(){
  pantallas.teclado();
}
