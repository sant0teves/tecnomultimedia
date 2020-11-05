// el objetivo del juego es evitar que cualquier particula del virus llegue al piso, usando el jabon para colisionar y hacerlas rebotar para arriba. Si uno de los virus llega al piso el jugador pierde

class Juego {

  //atributos
  Virus [] arreglo_Virus;
  int c = 3;
  int estado = 1;
  Jabon mijabon;
  Pantalla pantallas;
  PImage fondo;
  int losVirus = 0;

  //constructor:
  Juego() {
    fondo = loadImage("fondo.jpg");
    pantallas = new Pantalla();
    mijabon = new Jabon();
    arreglo_Virus = new Virus[c];
    for ( int i=0; i < c; i++ ) {
      arreglo_Virus[i] = new Virus ();
    }
  } 

  //funcionalidad:
  void draw () {
    image( fondo, width/2, height/2, 600, 600);
    if ( estado == 1) { 
      mijabon.actualizar();
      pantallas.inicio();
      for ( int i=0; i < c; i++ ) {
        arreglo_Virus[i].actualizar();
        if (arreglo_Virus[i].colision( mijabon.getX(), mijabon.getY(), mijabon.getTam() ) ) {
          arreglo_Virus[i].volver();
        } else if ( arreglo_Virus[i].getY() > 600 ) {
          cambiarAEstado(2);
        } else if ( arreglo_Virus[i].getY() < -300) {
          losVirus++;
        } else if ( losVirus == c ) {
          cambiarAEstado(3);
        }
      }
    } else if (estado == 2) {
      pantallas.perdiste();
      pantallas.click();
    } else if (estado == 3) {
      pantallas.ganaste();
      pantallas.click();
      losVirus = 0;
    }
  }

  void mousePressed() {
    if (pantallas.click() && estado == 2) {
      cambiarAEstado(1);
    } 
    if (pantallas.click() && estado == 3) {
      cambiarAEstado(1);
    }
  }

  void cambiarAEstado( int nuevoEstado_ ) {
    estado = nuevoEstado_;
    if ( nuevoEstado_ == 1 ) {
      mijabon = new Jabon();
      arreglo_Virus = new Virus[c];
      for ( int i=0; i < c; i++ ) {
        arreglo_Virus[i] = new Virus ();
      }
    }
  }
}
