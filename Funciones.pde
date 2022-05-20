void apareceTexto() {
  background (0);
  fill (248, 171, 22, opacidad);
  opacidad = opacidad +5;
}

void desapareceTexto() {
  background (0);
  fill (248, 171, 22, opacidad);
  opacidad = opacidad -15;
}

void apareceImagen() {
  background (0);
  fill (248, 171, 22, opacidad);
  rect (0, 0, 1280, 0, 1280, 720, 0, 720);
  opacidad = opacidad +5;
}

void creditosInicio() {
  if (frameCount <= 135) {
    apareceTexto();
    texto1();
  }
  if (frameCount >= 136 && frameCount <=180) {
    desapareceTexto();
    texto1();
  }
  if (frameCount >180 && frameCount <= 315) {
    apareceTexto();
    texto2();
  }
  if (frameCount > 315 && frameCount <= 360) {
    desapareceTexto();
    texto2();
  }   
  if (frameCount > 360 && frameCount <= 420) {
    apareceTexto();
    texto3();
  }  
  if (frameCount > 420 && frameCount <= 480) {
    apareceTexto();
    texto4();
  }   
  if (frameCount > 480 && frameCount <= 540) {
    apareceTexto();
    texto5();
  }  
  if (frameCount > 540 && frameCount <= 600) {
    apareceTexto();
    texto6();
  }  
  if (frameCount > 600 && frameCount <= 660) {
    apareceTexto();
    texto7();
  } 
  if (frameCount > 660 && frameCount <= 720) {
    apareceTexto();
    texto8();
  }  
  if (frameCount > 720 && frameCount <= 780) {
    apareceTexto();
    texto9();
  }
  if (frameCount > 780 && frameCount <= 840) {
    apareceTexto();
    texto10();
  }  
  if (frameCount > 840 && frameCount <= 900) {
    apareceTexto();
    texto11();
  }  
  if (frameCount > 900 && frameCount <= 960) {
    apareceTexto();
    texto12();
  } 
  if (frameCount > 960 && frameCount <= 1020) {
    apareceTexto();
    texto13();
  }  
  if (frameCount > 1020 && frameCount <= 1080) {
    apareceTexto();
    texto14();
  } 
  if (frameCount > 1080 && frameCount <= 1140) {
    apareceTexto();
    texto15();
  }   
  if (frameCount > 1140 && frameCount <= 1200) {
    apareceTexto();
    texto16();
  }  
  if (frameCount > 1200 && frameCount <= 1260) {
    apareceTexto();
    texto17();
  }

  if (frameCount > 1260 && frameCount <= 1320) {
    apareceTexto();
    texto18();
  }
  if (frameCount > 1320 && frameCount <= 1380) {
    apareceTexto();
    texto19();
  }
  if (frameCount > 1380 && frameCount <= 1440) {
    apareceTexto();
    texto20();
  }
  if (frameCount >1440 && frameCount <= 1500) {
    apareceImagen();
    apareceTexto();
    texto21();
  }
  if (frameCount >1500 && frameCount <= 1560) {
    apareceTexto();
    texto22();
  }
  if (frameCount >1560 && frameCount <= 1620) {
    apareceTexto();
    texto23();
  }
  if (frameCount >1620 && frameCount <= 1680) {
    apareceTexto();
    texto24();
  }
  if (frameCount > 1680 && frameCount <= 1740) {
    apareceTexto();
    texto25();
  }
  if (frameCount > 1680 && frameCount <= 1740) {
    apareceTexto();
    texto26();
  }
  if (frameCount > 1740 && frameCount <= 1800) {
    apareceTexto();
    texto27();
  }
  if (frameCount > 1800 && frameCount <= 1860) {
    apareceTexto();
    texto28();
  }
  if (frameCount > 1860 && frameCount <= 1920) {
    apareceTexto();
    texto29();
  }
  if (frameCount > 1920 && frameCount <= 1980) {
    apareceTexto();
    texto30();
  }
  if (frameCount > 1980 && frameCount <= 2040) {
    apareceTexto();
    texto31();
  }
  if (frameCount > 2040 && frameCount <= 2100) {
    apareceTexto();
    texto32();
  }
  if (frameCount > 2100 && frameCount <= 2160) {
    apareceTexto();
    texto33();
  }
  if (frameCount > 2160 && frameCount <= 2220) {
    apareceTexto();
    texto34();
  } else
  {
   if (frameCount > 2220) {
     //REINICIO
     start=false;
   }
  }
}
