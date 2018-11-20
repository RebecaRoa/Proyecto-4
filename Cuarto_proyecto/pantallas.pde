class Pantalla{
  int p;
  
  void inicio(){
    background(228, 199, 116);
    textSize(200);
    fill(0);
    textFont(titulo, 80);
    text("Kawaii Face", 150,230);
    textFont(instr, 30);
    text("Presiona 'b' para continuar", 60,440);
  }
  
   void intrucciones(){
    background(228, 172, 116);
    textSize(100);
    fill(0);
    textFont(instr, 40);
    text("INSTRUCCIONES:",50,60);
    textFont(instr, 30);
    text("*En la pantalla de selección podrás elegir el filtro que\n guste presionando la tecla indicada.", 30, 130);
    text("*Podrás cambiar los filtros regresando a la pantalla de\n selección presionando 'v', o cambiarlos directamente en la\n cámara presionando la tecla del filtro dos veces.", 30, 200);
    text("*Podrás tomar fotos presionado la tecla 'p'", 30, 300);
    fill(random (255), random (100), random (50));
    textFont(instr, 25);
    text("*Presiona 'v' para continuar*", 20, 400);
    text("*Presiona ´m´ para regresar a la pantalla de inicio *", 20, 450);
  }
  
  void seleccion(){
    background(228, 173, 117);
    
    //filtro 1
    pushMatrix();
    translate(80,50);
    scale(0.3,0.3);
    image(f1,0,0);
    popMatrix();
    
    textSize(100);
    fill(0);
    textFont(titulo, 30);
    text("w", 170, 210);
    
    //filtro 2
     pushMatrix();
    translate(400,50);
    scale(0.3,0.3);
    image(f2,0,0);
    popMatrix();
    
    textSize(100);
    fill(0);
    textFont(titulo, 30);
    text("e", 490, 215);
    
    //filtro 3
     pushMatrix();
    translate(80,250);
    scale(0.3,0.3);
    image(f3,0,0);
    popMatrix();
    
    textSize(100);
    fill(0);
    textFont(titulo, 30);
    text("R", 170, 420);
    
    //filtro 4
     pushMatrix();
    translate(400,250);
    scale(0.3,0.3);
    image(f4,0,0);
    popMatrix();
    
    textSize(100);
    fill(0);
    textFont(titulo, 30);
    text("t", 490, 430);
    
    fill(0);
    textFont(instr,20);
    text("*Presiona 'b' para volver a la pantalla de instrucciones*",55,40);
  }
  
  void camara(){
    //flitro1
    if (sele==1){
  fli.display();
  fli.estruc();
    }
    
    //filtro2
     if (sele==2){
     fli2.display();
     fli2.estruc();
   }
   
   //filtro3
   if (sele==3){
     fli3.display();
     fli3.estruc();
   }
   
   //filtro4
   if (sele==4){
     fli4.display();
     fli4.estruc();
   }
  }
   
  void display(){
    switch(this.p){
      case 0:
      inicio();
      break;
      case 1:
      intrucciones();
      break;
      case 2:
      seleccion();
      break;
      case 3:
      camara();
      break;
    }
  }
  
  void captura(){
    saveFrame("Foto - ######. JPEG");
  }
  
  void teclado(){
    if (key == 'm'){
      p=0;
    }
    
    if (key == 'b'){
      p=1;
    }
    
    if (key == 'v'){
      p=2;
      video.stop();
    }
      
      if (key == 'p'){
      pantallas.captura();
    }
    
    if (key == 'w'){
     if (sele==0){
       sele = 1;
       p=3;
     }
     else{
       if (sele <= 4){
         sele = 0;
         video.stop();
       }
     }
     }
    
    
    if (key == 'e'){
     if (sele == 0){
       sele=2;
       p=3;
     }
     else{
       if(sele <= 4){
         sele = 0;
         video.stop();
       }
     }
    }
    
    if (key == 'r'){
      if (sele == 0){
        sele=3;
        p=3;
      }
      else{
        if(sele <= 4){
          sele = 0;
          video.stop();
        }
      }
    }
    if (key == 't'){
      if (sele == 0){
        sele = 4;
        p=3;
      }
      else {
        if (sele <= 4){
          sele = 0;
          video.stop();
        }
      }
    }
    
  }
}
