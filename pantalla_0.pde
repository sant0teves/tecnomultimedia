void pantalla_0() {
  image(img,eX(0),eY(0),eX(600), eY(600));
  textFont(fuente_1);
  textSize(eX(24));
  text("El virus acaba de mutar, la ciudad está desierta\ny se cortaron todas las comunicaciones...", eX(250) , eY(400) );
  textFont(fuente_2);
    pushStyle();
    textSize(eX(12));
    textAlign(CENTER);
    text("Utiliza las flechas del teclado para mover el jabón,\nevitar contagiarte y comenzar la aventura", eX(300) , eY(573) );
    popStyle();
  image(flechas2, eX(265) , eY(525), eX(70), eY(25) );
  image(jabon, eX(posX) , eY(430), eX(100), eY(100) );
  
  //caida del virus
  for ( int i = 0; i < c; i++) {
  y[i] = y[i] + mov[i];
  image( virus_1[i], eX(x[i]), eY(y[i]), eX(escala[i]), eY(escala[i]) );
  }
    if (dist ( eX(posX) , eY(430), x[0] , y[0]) < 30 ) {
      mov[0] = -3;
    }  
    
    if (dist ( eX(posX) , eY(430), x[1] , y[1]) < 30 ) {
      mov[1] = -3;
    } 
    
     if (dist ( eX(posX) , eY(430), x[2] , y[2]) < 30 ) {
      mov[2] = -3;
    }  
        
    //avanzar en la aventura si superaste el minijuego o pantalla de derrota y volver a comenzar    
    {   if ( y[0] > eY(600) || y[1] > eY(600) || y[2] > eY(600)) 
     lost();  
     else if ( y[0] < -eY(350) && y[1] < -eY(350) && y[2] < -eY(350) ) 
     win();
     }
    
   }
  
  
  
