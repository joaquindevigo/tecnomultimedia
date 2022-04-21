void setup(){
  size (600,600);
  background (68, 83, 137);
  
 //cuadro de fondo
  fill (52, 42, 35);
  stroke (52, 42, 35);
  quad (275, 50, 575, 50, 575, 350, 275, 350);   //marco
  fill (70, 4, 1);
  stroke (70, 4, 1);
  quad (300, 75, 550, 75, 550, 325, 300, 325);   //fondo cuadro
  fill (49, 36, 1);
  stroke (49, 36, 1);
  rect (385, 220, 25, 105);                      //tronco de arbol
  fill (2, 53, 23);
  stroke (2, 53, 23);
  ellipse (400, 145, 90, 70);
  ellipse (360, 200, 70, 90);                    //copa de arbol
  ellipse (425, 200, 100, 80);
  fill (167, 155, 12);
  stroke (167, 155, 12);
  circle (500, 125, 40);                         //sol

 //lampara 
  fill (50, 50, 50);
  stroke (50, 50, 50);
  quad (65, 210, 100, 185, 100, 187.5, 69, 210);//cable
  stroke (0);
  fill(0, 0, 0);                                
  quad (10, 300, 25, 300, 60, 390, 45, 390);      //tronco inferior
  quad (60, 210, 75, 210, 25, 300, 10, 300);      //tronco superior
  fill (200, 200, 200);
  stroke (200, 200, 200);
  quad (22, 300 , 25, 300, 60, 390, 57, 390);     //sombra tronco inferior
  quad (22, 300, 70, 210, 75, 210, 25, 300);      //sombra tronco superior
  fill (200, 200, 200);
  stroke (200, 200, 200);
  circle (20, 300, 25);                           //sombra circulo de union inferior
  circle (67.5, 210, 25);                         //sombra circulo de union superior
  fill (0, 0, 0); 
  stroke (0, 0, 0);
  circle (18, 300, 25);                          //circulo de union inferior
  circle (65.5, 210, 25);                        //circulo de union superior
  
  //foco
  stroke (255, 250, 134);
  fill (255, 250, 134);
  circle (130, 210, 20);                                //foco
  stroke (50, 50, 50);
  fill (50, 50, 50);
  quad (100, 180, 115, 170, 140, 180, 100, 205);        //lampara
  quad (101, 205.5, 140, 181, 170, 190, 101, 235);      //lampara
  stroke (255, 255, 255, 0);
  fill (255, 255, 255, 80);
  quad ( 101, 235, 170, 190, 1000, 400, 40, 1000);      //luz 
  
  //base lampara
  fill (200, 200, 200);
  circle (50, 413, 60);                                 //sombra base lampara
  stroke (100, 100, 100);
  fill (101, 104, 113);
  circle (48.5, 413, 60);                               //base lampara
  
  
  //mesita de luz
  fill (113, 80, 57);
  stroke (113, 80, 57);
  quad (0, 425, 175, 425, 175, 600, 0, 600);            //parte inferior  
  rect (0, 400, 200, 25);                               //parte superior
  fill (72, 58, 49);
  quad (0, 425, 176, 425, 156, 440, 0, 440);            //sombra de la parte inferior 
  
 
  
}  
