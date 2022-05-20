PFont font;
PImage imagenDobly,inicio;
int opacidad;
void setup() {
  size (1280, 720);
  background (0);
  font = createFont("Homer_Simpson.ttf", 35, true);
  textFont (font);
  opacidad = 0;
  imagenDobly = loadImage ("imagenDobly.png");
  inicio = loadImage ("inicio.jpg");
}
//Inicia dando click
void draw(){
  if (start){
    creditosInicio();
  }else{
    image (inicio, 0,0);
    frameCount = 0;
  }
}

void mousePressed () {
  start=true;
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
