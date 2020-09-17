import ddf.minim.*;
PImage img, final_1, casa, cocina, helicoptero, paloma, final_2, vecinx, final_3, buscar, elementos, comunicacion, final_4, final_5, final_6, final_7, creditos, jabon, flechas2, perdiste;
PFont fuente, fuente_1, fuente_2;
int pantalla;
float posX, posY;

//arreglos y variables
int c = 3;
float [] x = new float[c];
float [] y = new float[c];
float [] escala = new float[c];
float [] mov = new float[c];
PImage [] virus_1 = new PImage[c];


void setup () {
  size(600,600); 
  surface.setResizable(true);  
 
//música de fondo 
  bandaSonora();
 
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
  jabon = loadImage("jabon.png");
  flechas2 = loadImage("flechas2.png");
  perdiste = loadImage("perdiste.jpg");
  
//fuentes
  fuente_1 = loadFont("whateverittakes-Bold-48.vlw");
  fuente_2 = loadFont("Portada-Italic-48.vlw");
  textSize(20);
  pantalla = 0;
  
//inicializador variables
  inicializador();
  

}

void draw() {
  background(100,100,100);
  if( pantalla == 0 ) {
    pantalla_0();
  } else if ( pantalla == 1 ) {
    pantalla_1();  
  } else if ( pantalla == 2 ) {
    pantalla_2();  
  } else if ( pantalla == 3 ) {
    final_1();   
  } else if ( pantalla == 4 ) { 
    pantalla_4(); 
  } else if ( pantalla == 5 ) {
    pantalla_5();   
  } else if ( pantalla == 6 ) { 
    pantalla_6();     
  } else if ( pantalla == 7 ) {
    final_2();     
  } else if ( pantalla == 8 ) {
    final_3();   
  } else if ( pantalla == 9 ) {
    pantalla_9();   
  } else if ( pantalla == 10 ) {
    pantalla_10();   
  } else if ( pantalla == 11 ) {
    final_4(); 
  } else if ( pantalla == 12 ) {
    final_5();   
  } else if ( pantalla == 13 ) {
    final_6();   
  } else if ( pantalla == 14 ) {
    final_7();   
  } else if ( pantalla == 15 ) {
    creditos();  
  } else if ( pantalla == 16 ) {
    perdiste();   
  }
  
}

void mousePressed() {
//reiniciar minijuego luego de perder 
if ( pantalla == 16 ) {
    if (clickOpcion (300, 580, 200) ) {
    pantalla=0;
    inicializador();
      }
    }
if ( pantalla == 1 ) {
    if ( clickOpcion ( 290, 210, 60) ) {
    pantalla=2;
   }
    if ( clickOpcion ( 490, 350, 60) ) {
    pantalla=5;
     }   
    if ( clickOpcion ( 50, 580, 50) ) {
    pantalla=0;
    inicializador();
     } 
  } else if ( pantalla == 1 ) {
    pantalla=2;
    } else if ( pantalla == 2 ) {
    if ( clickOpcion (350, 50, 40) ) {
    pantalla=3;
     }
    if (clickOpcion (250, 360, 40) ) {
    pantalla=4;
     }   
    if (clickOpcion (50, 580, 50) ) {
    pantalla=0;
    inicializador();
     }
  } else if ( pantalla == 2 ) {
    pantalla=3;
    } else if ( pantalla == 3 ) {
    if (clickOpcion (500, 580, 50) ) {
    pantalla=15;
     } 
    if (clickOpcion (100, 580, 50) ) {
    pantalla=0;
    inicializador();
     }
  } else if ( pantalla == 3 ) {
    pantalla=4;
    } else if ( pantalla == 4 ) {
    if (clickOpcion (510, 210, 170) ) {
    pantalla=5;
     }
    if (clickOpcion (120, 480, 150 )) {
    pantalla=8;
     }   
    if (clickOpcion (520, 580, 50) ) {
    pantalla=0;
    inicializador();
     }
  } else if ( pantalla == 4 ) {
    pantalla=5;
    } else if ( pantalla == 5 ) {
    if (clickOpcion (290, 100, 75) ) {
    pantalla=7;
     }
    if (clickOpcion (250, 495, 70) ) {
    pantalla=6;
     }   
    if (clickOpcion (10, 580, 40) ) {
    pantalla=0;
    inicializador();
     }
  } else if ( pantalla == 5 ) {
    pantalla=6;
    } else if ( pantalla == 6 ) {
    if (clickOpcion (260, 105, 100) ) {
    pantalla=9;
     }
    if (clickOpcion (150, 510, 100) ) {
    pantalla=10;
     }   
    if (clickOpcion (520, 580, 50) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 6 ) {
    pantalla=7;
    } else if ( pantalla == 7 ) {
    if (clickOpcion (550, 580, 40) ) {
    pantalla=15;
     }
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0; 
    }
  } else if ( pantalla == 7 ) {
    pantalla=8;
    } else if ( pantalla == 8 ) {
    if (clickOpcion (420, 470, 50) ) {
    pantalla=15;
     }
    if (clickOpcion (500, 560, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 8 ) {
    pantalla=9;
    } else if ( pantalla == 9 ) {
    if (clickOpcion (470, 480, 90) ) {
    pantalla=11;
     }
    if (clickOpcion (150, 140, 60) ) {
    pantalla=12;
     }   
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 9 ) {
    pantalla=10;
    } else if ( pantalla == 10 ) {
    if (clickOpcion (190, 455, 90) ) {
    pantalla=13;
     }
    if (clickOpcion (500, 165, 90) ) {
    pantalla=14;
     }   
    if (clickOpcion (500, 580, 40) ) {
    pantalla=0; 
    inicializador();
    }
  } else if ( pantalla == 10 ) {
    pantalla=11;
    } else if ( pantalla == 11 ) {
    if (clickOpcion (550, 580, 40) ) {
    pantalla=15;
     }
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 11 ) {
    pantalla=12;
    } else if ( pantalla == 12 ) {
    if (clickOpcion (550, 580, 40) ) {
    pantalla=15;
     }
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 12 ) {
    pantalla=13;
    } else if ( pantalla == 13 ) {
    if (clickOpcion (550, 580, 40) ) {
    pantalla=15;
     }
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 13 ) {
    pantalla=14;
    } else if ( pantalla == 14 ) {
    if (clickOpcion (550, 580, 40) ) {
    pantalla=15;
     }
    if (clickOpcion (30, 580, 60) ) {
    pantalla=0;
    inicializador();
    }
  } else if ( pantalla == 14 ) {
    pantalla=15;
    } else if ( pantalla == 15 ) {
    if (clickOpcion (300, 580, 100) ) {
    pantalla=0;
    inicializador();
  } else if ( pantalla == 15 ) {
    pantalla=16;
    } 
  } 
}


void keyPressed(){
  //movimiento de jabón con flechas del teclado
  if( keyCode == RIGHT ) posX += eX(15);
  if( keyCode == LEFT ) posX -= eX(15);
  //limitador de bordes para que no se salga de pantalla la figura 
  if( posX > width -eX(50) ) posX = width -eX(50) ;
  if( posX < -eX(50)) posX = -eX(50);
  


}
