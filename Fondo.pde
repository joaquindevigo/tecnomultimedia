class Fondo {
  //propiedades / variables de la clase
  PImage universo;
  
  //declaro instancias de la clase Nave y Asteroide
  Nave voyager;
  Asteroide asteroide1, asteroide2, asteroide3;
  
  //constructor
  Fondo () {
    universo = loadImage ("universo.jpg");
    
    //inicializo el objeto nave
    voyager = new Nave();
    
    //inicializo los 3 objetos asteroides
    asteroide1 = new Asteroide();
    asteroide2 = new Asteroide();
    asteroide3 = new Asteroide();
  }
  
  void dibujar () {
    //ubico imagen fondo
    image(universo, 0, 0);
    
    //dibujo la nave
    //actualizo la nave segun la vaya moviendo (eventos de teclado)
    voyager.actualizar();
    voyager.dibujar ();
    
    //dibujo los asteroides
    //actualizo la pos de cada asteroide cuando se va de la pantalla (height)
    asteroide1.dibujar();
    asteroide1.actualizar();
    asteroide2.dibujar();
    asteroide2.actualizar();
    asteroide3.dibujar();
    asteroide3.actualizar();
  }
  
  // chequeo si la nave colisiona con el asteroide con condiciones "AND" &&
  // luego consulto con la operacion "OR" || por cada asteroide
  void colision() {
    if (
      (asteroide1.posxAsteroide - 25 <= voyager.posxNave + 70 
      && asteroide1.posxAsteroide + 25 >= voyager.posxNave
      && asteroide1.posyAsteroide - 25 >= voyager.posyNave + 70
      )
      || 
      ((asteroide2.posxAsteroide - 25 <= voyager.posxNave + 70 
      && asteroide2.posxAsteroide + 25 >= voyager.posxNave
      && asteroide2.posyAsteroide - 25 >= voyager.posyNave + 70
      ))
      || 
      ((asteroide3.posxAsteroide - 25 <= voyager.posxNave + 70 
      && asteroide3.posxAsteroide + 25 >= voyager.posxNave
      && asteroide3.posyAsteroide - 25 >= voyager.posyNave + 70
      ))
      )
    {
      background(255, 0, 0);
    }
  }
  void actualizar () {
    colision();
  }
}
