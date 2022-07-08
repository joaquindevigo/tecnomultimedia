
//EN JUEGO

void enJuego() { 

  if (limpiar) {
    pantallaDeJuego(); 

    pelotasIncorrectas();

    mostrarPelotasCorrectas();
  }
  limpiar=false;
}

//MOSTRAR PELOTAS CORRECTS

void mostrarPelotasCorrectas() {
  for (int i=0; i < 10; i++) {
    fill(255, 0, 0);
    circle(posicionCorrectasX[i], posicionCorrectasY[i], 20);
  }
}


//PANTALLA PRINCIPAL

void pantallaPrincipal() {
  background(0, 12, 37); 
  fill(255);
  textAlign(CENTER, CENTER); 
  textSize(22);
  text("¡Marcá todas las pelotas rojas\nen el menor tiempo posible!", width/2, 200);
  textSize(15);
  text("PULSA ENTER \n PARA COMENZAR EL JUEGO", width/2, 420);
}

//EVENTO DE INICIO DE JUEGO

void keyPressed() {
  
  //SI SE APRETO ENTER Y NO SE ESTA JUGANDO
  
  if ((key == ENTER)&& (!enter)) {
    tiempo=0;
    puntos= 0;
    inicioConteo = true;
    enter = true;
    limpiar = true;
    cant=10;
    cargarPosicionesCorrectas();
  }
}

//PANTALLA DE JUEGO

void pantallaDeJuego() {
  background(0, 12, 37);
  fill(255);
  noStroke();
  rect(0, 500, 600, 500, 600, 600, 0, 600);
  textSize(20);
  fill(255, 0, 0);
  text("Puntaje:" + puntos, 220, 580);
}

//PELOTAS INCORRECTAS

void pelotasIncorrectas() { 
  for (int i=0; i<30; i++) {
    posXincorrecta = random(15, 585);
    posYincorrecta = random(15, 485);
    fill(255);
    circle( posXincorrecta, posYincorrecta, 20);
  }
}

//PANTALLA PERDISTE

void pantallaPerdiste() {
  background(0, 12, 37);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("¡PERDISTE!", width/2, height/2);
  textSize(20);
  text("Tu puntaje fue de: "+ puntos + "\npelotas en: " + tiempo/60 + "¨", width/2, 40);
  textSize(15);
  text("PULSA ENTER \n PARA REINICIAR EL JUEGO", width/2, 420);
  if (!limpiar) {
    limpiar=true;
  }
}

//PANTALLA FINAL DEL TIEMPO

void pantallaFinalDeTiempo() {
  background(0, 12, 37);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("¡SE TE ACABO\nEL TIEMPO!", width/2, height/2);
  textSize(20);
  text("Tu puntaje fue: "+ puntos, width/2, 40);
  textSize(15);
  text("PULSA ENTER\nPARA REINICIAR EL JUEGO", width/2, 430);
}


//CONTROL DE ACIERTOS Y FALLOS

void mouseClicked() {

  //SI EL CLICK SE EFECTUA MIENTRAS SE INICIO EL JUEGO


  if (enter) {
    for (int i = 0; i < 10; i++) {
      float distancia = dist (mouseX, mouseY, posicionCorrectasX[i], posicionCorrectasY[i]);
      int radio = 20/2;   

      //CORROBORO SI SE CLICKEO EL CORRECTO

      if (distancia < radio) {
        puntos++;
        cant--;

        //SI SE CLICKEO EL CORRECTO SE LO MARCA CON UN PUNTO

        fill(0, 12, 37);
        noStroke();
        circle(posicionCorrectasX[i], posicionCorrectasY[i], 10);

        //DESACTIVA LA POSICION (si seguis tocando esa posicion no sigue sumando puntos)

        posicionCorrectasX[i] = (width+30);
        posicionCorrectasY[i] = (height+30);


        //DESCUENTA LOS CLICKS EN LAS CORRECTAS

        missClick--;

        //SI TOCO TODAS LAS PELOTAS EN PANTALLA ME CARGA DE NUEVO LAS POSICONES

        if (cant == 0) {
          limpiar=true;
          cargarPosicionesCorrectas();
          cant=10;
        }
      } else {

        //CUANDO NO SE CLICKEE UNA PELOTA CORRECTA

        ERROR=true;
      }
    }
    if (ERROR) {

      //SI HUBO MISSCLICK SUMA EL CONTADOR DE ERROR

      missClick++;
      if (missClick == 1) {
        pantallaPerdiste();

        //DEJO DE CONTAR EL TIEMP

        inicioConteo=false;

        //RESETEO LOS MISSCLICK PARA Q NO SE ACUMULEN

        missClick = 0;
        enter = false;
      }
    }
  }
}
