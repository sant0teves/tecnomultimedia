PImage img, final_1, casa, cocina, helicoptero, paloma, final_2, vecinx, final_3, buscar, elementos, comunicacion, final_4, final_5, final_6, final_7, creditos;
PFont fuente;
int pantalla;
PFont fuente_1;
PFont fuente_2;

void setup () {
  size(600,600); 
  
//imagenes
  img = loadImage("fondo.jpg");
  final_1 = loadImage("final_1.jpg");
  final_2 = loadImage("final_2.jpg");
  final_3 = loadImage("final_3.jpg");
  final_4 = loadImage("final_4.jpg");
  final_5 = loadImage("final_5.jpg");
  final_6 = loadImage("final_6.jpg");
  final_7 = loadImage("final_7.jpg");
  vecinx = loadImage("vecinx.jpg");
  buscar = loadImage("buscar.jpg");
  elementos = loadImage("elementos.jpg");
  comunicacion = loadImage("comunicacion.jpg");
  casa = loadImage("casa.jpg");
  cocina = loadImage("cocina.jpg");
  helicoptero = loadImage("helicoptero.png");
  creditos = loadImage("creditos.jpg");
  paloma = loadImage("paloma.jpg");

//fuentes
  fuente_1 = loadFont("whateverittakes-Bold-48.vlw");
  fuente_2 = loadFont("Portada-Italic-48.vlw");
  textSize(20);
  pantalla = 0;
}

void draw() {
  background(100,100,100);
  if( pantalla == 0 ) {
  image(img,0,0);
  textFont(fuente_1);
  textSize(24);
  text("El virus acaba de mutar, la ciudad está desierta\ny se cortaron todas las comunicaciones...",250,400);
  textFont(fuente_2);
  textSize(12);
  text(">>> Click para empezar <<<",330,570);
  
} else if ( pantalla == 1 ) {
  image(casa,0,0);
  textSize(10);
  text("> volver a empezar", 10, 580);
  
 
  } else if ( pantalla == 2 ) {
  image(cocina,0,0);
  textSize(10);
  text("> volver a empezar", 10, 580);
  } else if ( pantalla == 3 ) {
  image(final_1,0,0);
  image(helicoptero,mouseX-50,mouseY-50);
  textSize(12);
  text("Créditos <", 500, 580);
  text("> volver a empezar", 10, 580);
  
  } else if ( pantalla == 4 ) { 
  image(paloma,0,0);
  textSize(10);
  text("> volver a empezar", 500, 580);

  } else if ( pantalla == 5 ) {
  image(vecinx,0,0);
  textSize(10);
  text("> volver a empezar", 10, 580);
  
  } else if ( pantalla == 6 ) { 
  image(buscar,0,0);
  textSize(10);
  text("> volver a empezar", 500, 580);
  
  } else if ( pantalla == 7 ) {
  image(final_3,0,0);
  text("Créditos <", 535, 580);
  text("> volver a empezar", 10, 580);
    
  } else if ( pantalla == 8 ) {
  image(final_2,0,0);
  textSize(12);
  text("> volver a empezar", 480, 580);
  text("Créditos <", 380, 470);
  
  } else if ( pantalla == 9 ) {
  image(elementos,0,0);
  textSize(10);
  text("> volver a empezar", 10, 580);
  
  } else if ( pantalla == 10 ) {
  image(comunicacion,0,0);
  textSize(10);
  text("> volver a empezar", 480, 580);
  
  } else if ( pantalla == 11 ) {
  image(final_4,0,0);
  pushStyle();
  textSize(14);
  fill(0);
  text("> volver a empezar", 10, 580);
  text("Créditos <", 520, 580);
  popStyle();

  } else if ( pantalla == 12 ) {
  image(final_5,0,0);
  textSize(14);
  text("> volver a empezar", 10, 580);
  text("Créditos <", 520, 580);
  
  } else if ( pantalla == 13 ) {
  image(final_6,0,0);
  textSize(14);
  text("> volver a empezar", 10, 580);
  text("Créditos <", 520, 580);
  
  } else if ( pantalla == 14 ) {
  image(final_7,0,0);
  textSize(14);
  text("> volver a empezar", 10, 580);
  text("Créditos <", 520, 580);
  
  } else if ( pantalla == 15 ) {
  image(creditos,0,0);
  textSize(18);
  text( "Escrita y dirigida por", 200, height/2-10);
  textSize(32);
  text( "Santiago Teves", 180, height/2+20);
  textSize(16);
  text(">>> volver a empezar <<<", width/2-90, 580);
  
  }
}

void mousePressed() {
 if( pantalla == 0 ) {
    pantalla=1;
  } else if ( pantalla == 1 ) {
    if (dist(mouseX,mouseY, 290, 210) < 60) {
    pantalla=2;
     }
    if (dist(mouseX,mouseY, 490, 350) < 60) {
    pantalla=5;
     }   
    if (dist(mouseX,mouseY, 50, 580) < 50) {
    pantalla=0;
     } 
  } else if ( pantalla == 1 ) {
    pantalla=2;
    } else if ( pantalla == 2 ) {
    if (dist(mouseX,mouseY, 350, 50) < 40) {
    pantalla=3;
     }
    if (dist(mouseX,mouseY, 250, 360) < 40) {
    pantalla=4;
     }   
    if (dist(mouseX,mouseY, 50, 580) < 50) {
    pantalla=0;
     }
  } else if ( pantalla == 2 ) {
    pantalla=3;
    } else if ( pantalla == 3 ) {
    if (dist(mouseX,mouseY, 500, 580) < 50) {
    pantalla=15;
     } 
    if (dist(mouseX,mouseY, 100, 580) < 50) {
    pantalla=0;
     }
  } else if ( pantalla == 3 ) {
    pantalla=4;
    } else if ( pantalla == 4 ) {
    if (dist(mouseX,mouseY, 510, 210) < 170) {
    pantalla=5;
     }
    if (dist(mouseX,mouseY, 120, 480) < 150) {
    pantalla=8;
     }   
    if (dist(mouseX,mouseY, 520, 580) < 50) {
    pantalla=0;
     }
  } else if ( pantalla == 4 ) {
    pantalla=5;
    } else if ( pantalla == 5 ) {
    if (dist(mouseX,mouseY, 290, 100) < 75) {
    pantalla=7;
     }
    if (dist(mouseX,mouseY, 250, 495) < 70) {
    pantalla=6;
     }   
    if (dist(mouseX,mouseY, 10, 580) < 40) {
    pantalla=0;
     }
  } else if ( pantalla == 5 ) {
    pantalla=6;
    } else if ( pantalla == 6 ) {
    if (dist(mouseX,mouseY, 260, 105) < 100) {
    pantalla=9;
     }
    if (dist(mouseX,mouseY, 150, 510) < 100) {
    pantalla=10;
     }   
    if (dist(mouseX,mouseY, 520, 580) < 50) {
    pantalla=0; 
    }
  } else if ( pantalla == 6 ) {
    pantalla=7;
  } else if ( pantalla == 7 ) {
    if (dist(mouseX,mouseY, 550, 580) < 40) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 7 ) {
    pantalla=8;
} else if ( pantalla == 8 ) {
    if (dist(mouseX,mouseY, 420, 470) < 50) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 500, 560) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 8 ) {
    pantalla=9;
    } else if ( pantalla == 9 ) {
    if (dist(mouseX,mouseY, 470, 480) < 90) {
    pantalla=11;
     }
    if (dist(mouseX,mouseY, 150, 140) < 60) {
    pantalla=12;
     }   
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 9 ) {
    pantalla=10;
    } else if ( pantalla == 10 ) {
    if (dist(mouseX,mouseY, 190, 455) < 90) {
    pantalla=13;
     }
    if (dist(mouseX,mouseY, 500, 165) < 90) {
    pantalla=14;
     }   
    if (dist(mouseX,mouseY, 500, 580) < 40) {
    pantalla=0; 
    }
  } else if ( pantalla == 10 ) {
    pantalla=11;
    } else if ( pantalla == 11 ) {
    if (dist(mouseX,mouseY, 550, 580) < 40) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 11 ) {
    pantalla=12;
    } else if ( pantalla == 12 ) {
    if (dist(mouseX,mouseY, 550, 580) < 40) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 12 ) {
    pantalla=13;
    } else if ( pantalla == 13 ) {
    if (dist(mouseX,mouseY, 550, 580) < 40) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 13 ) {
    pantalla=14;
    } else if ( pantalla == 14 ) {
    if (dist(mouseX,mouseY, 550, 580) < 40) {
    pantalla=15;
     }
    if (dist(mouseX,mouseY, 30, 580) < 60) {
    pantalla=0; 
    }
  } else if ( pantalla == 14 ) {
    pantalla=15;
    } else if ( pantalla == 15 ) {
    if (dist(mouseX,mouseY, width/2, 580) < 100) {
    pantalla=0; 
    }
  } 
}
