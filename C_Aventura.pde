import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

class Aventura {

  //atributos
  Juego mijuego;
  int cantPantallas = 16;
  Pantallas [] arrayPantalla;
  int pantalla = 0;
  Minim gestor;
  AudioPlayer player;

  //constructor:
  Aventura( PApplet miApp_ ) { 
    mijuego = new Juego(); 
    arrayPantalla = new Pantallas[cantPantallas];
    arrayPantalla[0] = new Pantallas( "fondo.jpg", 10, 580 );
    arrayPantalla[1] = new Pantallas( "casa.jpg", 10, 580 );
    arrayPantalla[2] = new Pantallas( "cocina.jpg", 10, 580 );
    arrayPantalla[3] = new Pantallas( "paloma.jpg", 470, 580 );
    arrayPantalla[4] = new Pantallas( "vecinx.jpg", 10, 580 );
    arrayPantalla[5] = new Pantallas( "buscar.jpg", 470, 580 );
    arrayPantalla[6] = new Pantallas( "elementos.jpg", 10, 580 );
    arrayPantalla[7] = new Pantallas( "comunicacion.jpg", 480, 580 );
    arrayPantalla[8] = new Pantallas( "final_1.jpg", 520, 580 );
    arrayPantalla[9] = new Pantallas( "final_2.jpg", 535, 580 );
    arrayPantalla[10] = new Pantallas( "final_3.jpg", 520, 580 );
    arrayPantalla[11] = new Pantallas( "final_4.jpg", 287, 580 );
    arrayPantalla[12] = new Pantallas( "final_5.jpg", 520, 580 );
    arrayPantalla[13] = new Pantallas( "final_6.jpg", 520, 580 );
    arrayPantalla[14] = new Pantallas( "final_7.jpg", 520, 580 );
    arrayPantalla[15] = new Pantallas( "creditos.jpg", 300, 580 );
    {
      gestor = new Minim( miApp_ );
      player = gestor.loadFile("Apocalypse.mp3");
      player.setGain(-6);
      player.loop();
    }
  }

  //funcionalidad:
  void draw() {  
    if ( pantalla == 0 ) {
      mijuego.draw();
      if (mijuego.getResultado()==2) {  //cambia el estado de la aventura a perdió
        pantalla = 0;
        mijuego = new Juego();
      } else if (mijuego.getResultado()==1)  //cambia el estado de la aventura a ganó
        pantalla = 1;
    } else if ( pantalla >=1 && pantalla<=7 ) {
      arrayPantalla[pantalla].pantalla();
    } else if ( pantalla >=8 && pantalla<=14 ) {
      arrayPantalla[pantalla].final_();
    } else if ( pantalla == 15 ) {
      arrayPantalla[15].creditos_();
    }
  }

  void mousePressed() {
    if ( pantalla == 0 ) {
      if ( arrayPantalla[0].click( 300, 300, 50 ) ) {
        pantalla=1;
      }
    } else if ( pantalla == 1 ) {
      if ( arrayPantalla[1].click( 290, 210, 60 ) ) {
        pantalla=2;
      }
      if ( arrayPantalla[1].click ( 490, 350, 60) ) {
        pantalla=4;
      }   
      if ( arrayPantalla[1].click ( 50, 580, 50) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 1 ) {
      pantalla=2;
    } else if ( pantalla == 2 ) {
      if ( arrayPantalla[2].click ( 350, 50, 40 ) ) {
        pantalla=8;
      }
      if ( arrayPantalla[2].click ( 250, 360, 40 ) ) {
        pantalla=3;
      }   
      if ( arrayPantalla[2].click ( 50, 580, 50 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 2 ) {
      pantalla=3;
    } else if ( pantalla == 3 ) {
      if ( arrayPantalla[3].click ( 510, 210, 170 ) ) {
        pantalla=4;
      }
      if ( arrayPantalla[3].click ( 120, 480, 150 ) ) {
        pantalla=9;
      }   
      if ( arrayPantalla[3].click ( 520, 580, 50 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 3 ) {
      pantalla=4;
    } else if ( pantalla == 4 ) {
      if ( arrayPantalla[4].click ( 290, 100, 75 ) ) {
        pantalla=10;
      } 
      if ( arrayPantalla[4].click ( 250, 495, 70 ) ) {
        pantalla=5;
      } 
      if ( arrayPantalla[4].click ( 10, 580, 40 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 4 ) {
      pantalla=5;
    } else if ( pantalla == 5 ) {
      if ( arrayPantalla[5].click ( 260, 105, 100 ) ) {
        pantalla=6;
      }
      if ( arrayPantalla[5].click ( 150, 510, 100 )) {
        pantalla=7;
      }   
      if ( arrayPantalla[5].click ( 520, 580, 50 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 5 ) {
      pantalla=6;
    } else if ( pantalla == 6 ) {
      if ( arrayPantalla[6].click ( 470, 480, 90 ) ) {
        pantalla=11;
      }
      if ( arrayPantalla[6].click ( 150, 140, 60 ) ) {
        pantalla=12;
      }   
      if ( arrayPantalla[6].click ( 30, 580, 60 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 6 ) {
      pantalla=7;
    } else if ( pantalla == 7 ) {
      if ( arrayPantalla[7].click ( 190, 455, 90 ) ) {
        pantalla=13;
      }
      if ( arrayPantalla[7].click ( 500, 165, 90 ) ) {
        pantalla=14;
      }   
      if ( arrayPantalla[7].click ( 500, 580, 40 ) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    } else if ( pantalla == 7 ) {
      pantalla=8;
    } else if ( pantalla == 8 ) {
      if ( arrayPantalla[8].click ( 550, 580, 50 ) ) {
        pantalla=15;
      }
    } else if ( pantalla == 8 ) {
      pantalla=9;
    } else if ( pantalla == 9 ) {
      if ( arrayPantalla[9].click ( 500, 560, 60 ) ) {
        pantalla=15;
      }
    } else if ( pantalla == 9 ) {
      pantalla=10;
    } else if ( pantalla == 10 ) {
      if ( arrayPantalla[10].click ( 520, 580, 40 ) ) {
        pantalla=15;
      }
    } else if ( pantalla == 10 ) {
      pantalla=11;
    } else if ( pantalla == 11 ) {
      if ( arrayPantalla[11].click ( 287, 580, 40 ) ) {
        pantalla=15;
      }
    } else if ( pantalla == 11 ) {
      pantalla=12;
    } else if ( pantalla == 12 ) {
      if ( arrayPantalla[12].click (550, 580, 40) ) {
        pantalla=15;
      }
    } else if ( pantalla == 12 ) {
      pantalla=13;
    } else if ( pantalla == 13 ) {
      if ( arrayPantalla[13].click (550, 580, 40) ) {
        pantalla=15;
      }
    } else if ( pantalla == 13 ) {
      pantalla=14;
    } else if ( pantalla == 14 ) {
      if ( arrayPantalla[14].click (550, 580, 40) ) {
        pantalla=15;
      }
    } else if ( pantalla == 14 ) {
      pantalla=15;
    } else if ( pantalla == 15 ) {
      if ( arrayPantalla[15].click (300, 580, 100) ) {
        pantalla=0;
        mijuego = new Juego();
      }
    }
  }

  void keyPressed() {
  }
}


// función para redimensionar pantalla
float x_( float valor_ ) {
  return map( valor_, 0, 600, 0, width );
}

//proporcion de elementos para resizable en Y
float y_( float valor_ ) {
  return map( valor_, 0, 600, 0, height );
}
