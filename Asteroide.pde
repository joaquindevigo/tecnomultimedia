class Asteroide {

  //propiedades / variables de la clase
  float posxAsteroide, posyAsteroide;

  //constructor
  Asteroide () {
    posxAsteroide = random (width);
    posyAsteroide = random (height);
  }
  
  void dibujar() {
    pushStyle();
    circle (posxAsteroide, posyAsteroide, 50);
    popStyle();
  }
  
  void actualizar () {
    //actualizo para darle movimiento
    posyAsteroide = posyAsteroide + 6;
     //y reacomodando su posicion cuando se va de la pantalla (height)
    if (posyAsteroide > height) {
      posyAsteroide = -100;
      posxAsteroide = random (width);
    }
  }
}
