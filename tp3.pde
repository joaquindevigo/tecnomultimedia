
// link video youtube:   https://youtu.be/-mae--tLpPM


boolean enter=false;
boolean limpiar=true;
float posXincorrecta;
float posYincorrecta;
int cant=10;
int puntos, missClick;
int tiempo;
boolean inicioConteo, ERROR;
PFont fuenteJuego;

void setup() {
  size (600, 600);
  fuenteJuego = createFont ("fuenteJuego.otf", 20);
  textFont (fuenteJuego);
  pantallaPrincipal ();
  tiempo = 0;
}

void draw() {
  println (mouseX,mouseY);
  if ((enter) && (limpiar)) {
    enJuego();
  }

  if ((inicioConteo)) {
    tiempo++;
    
    //MUESTRO EL CONTEO DE PUNTOS Y DEL TIEMPO
    
  }
  fill(255);
  noStroke();
  rect(0, 500, 600, 500, 600, 600, 0, 600);
  textSize(20);
  fill(255, 0, 0);
  text("Puntaje: " + puntos, 200, 580);
  text("Tiempo: " + tiempo/60 + "¨", 380, 580);
  if ((tiempo/60  == 15) && (enter)) {
    
    //PARO EL CONTEO
    
    inicioConteo=false;
    
    //MUESTRO EN PANTALLA QUE SE ACABO EL TIEMPO
    
    pantallaFinalDeTiempo (puntos);

    if (!limpiar) {
      limpiar=true;
      inicioConteo=false;
    }
    enter=false;
    
    //DEJO DE JUGAR
    
  }
}
