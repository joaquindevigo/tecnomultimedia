void cuadradosGiratorios(){
   scale(0.95);
   if (click){                                   // Cuando se clicke en la pantalla (cualquier lugar) arranca el programa, vuelve a hacer click se apaga
     rotate(radians(velocidad));                 //hago girar los cuadrados segun incrementa la variable 
     rect(width/2,height/2,6000,6000);
   }
}

void mouseClicked (){
  click = !click;                                
}
