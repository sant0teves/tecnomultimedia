// el objetivo del juego es evitar que cualquier particula del virus llegue al piso, usando el jabon para colisionar y hacerlas rebotar para arriba. Si uno de los virus llega al piso el jugador pierde

class Juego {

  //atributos
  Virus [] arreglo_Virus;
  int c = 3;
  int estado = 0;
  Jabon mijabon;
  Pantallas mipantalla1;
  Pantallas mipantalla2;
  PImage fondo;
  int resultado = 0;

  //constructor:
  Juego() {
    fondo = loadImage("fondo_.jpg");
    mijabon = new Jabon();
    arreglo_Virus = new Virus[c];
    for ( int i=0; i < c; i++ ) {
      arreglo_Virus[i] = new Virus ();
    }
  }

  //funcionalidad:
  void draw () {
    image( fondo, width/2, height/2, x_(600), y_(600));
    if ( estado == 0) { 
      mijabon.actualizar();
      for ( int i=0; i < c; i++ ) {
        arreglo_Virus[i].actualizar();
        if (arreglo_Virus[i].colision( mijabon.getX(), mijabon.getY(), mijabon.getTam() ) ) {
          arreglo_Virus[i].volver();
        } else if ( arreglo_Virus[i].getY() > y_(600) ) {
          resultado = 2;
        } else if ( arreglo_Virus[i].getY() < y_(-300) ) {
          resultado = 1;
        }
      }
    }
  }

  int getResultado () {
    return resultado;
  }
}
