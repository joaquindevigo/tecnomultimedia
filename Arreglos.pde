float posicionCorrectasX[]=new float [10];
float posicionCorrectasY[]= new float [10];

void cargarPosicionesCorrectas(){
  for (int i = 0; i < 10 ; i++){
     posicionCorrectasX[i] = random(15,585);
     posicionCorrectasY[i] = random(15,485);
  }
}
