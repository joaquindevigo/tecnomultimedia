// declaro la instancia de la clase
Fondo fondoUniverso;

void setup(){
  size (500,500);    
  //inicializo el objeto llamando al método constructor
  fondoUniverso = new Fondo(); 
}

void draw (){
  //ejecuto los métodos del objeto
  fondoUniverso.dibujar ();
  fondoUniverso.actualizar ();
}





//video presentacion: https://youtu.be/DSkQH1LkeLo
