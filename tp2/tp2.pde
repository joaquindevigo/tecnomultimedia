/*
  video explicacion:
  https://www.youtube.com/watch?v=lu4YBEN6tLg
  
  ARRANQUE: CLICK DEL MOUSE
  APAGADO: CLICK DEL MOUSE
           

  ZOOM:  MOUSE A LA IZQUIERDA DE LA VENTANA ----> SE ALEJA
         MOUSE A LA DERECHA DE LA PANTALLA  ---->SE ACERCA
*/

boolean click;
float velocidad;
void setup(){
  size (900,900);
  rectMode(CENTER);                            //centro los rect
  stroke (0);
  strokeWeight(100);
}

void draw (){
  background (0);
  velocidad+=0.07;                               //inicializo la variable "velocidad" (va ir incrementando a medida q se ejecute el draw, para q no deje de girar)
  translate (width/2,height/2);                  
  float zoom = map(mouseX,0,width, 0.2,20);      // mapeo el mouseX para darle valores a "zoom" 
  scale(zoom);                                   //la variable "zoom" modificara la scala de los rect, hara un efecto zoom
  for (int i=0; i<1000;i++){                   
   cuadradosGiratorios();
  }

}
