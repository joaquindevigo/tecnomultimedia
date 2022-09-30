class Nave {
  PImage nave;
  float posxNave, posyNave;
  
  //constructor
  Nave (){
    nave = loadImage ("nave.png");
    posxNave = 220;
    posyNave = 400;
  }
  
  //ubico la imagen de la nave y su tamaño
  void dibujar (){
    image (nave, posxNave, posyNave,70,70);
  }
  
  //muevo la posicion de la nave según la tecla que se presione
  void actualizar (){
    if (keyPressed){
      if (keyCode == RIGHT){
        posxNave = posxNave + 3;  
      }
      if (keyCode == LEFT){
        posxNave = posxNave - 3;
      }
    }
  }
  
  
}
