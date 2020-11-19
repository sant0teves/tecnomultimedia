class Jabon {
  //atributos
  PImage jabon;
  float tam;
  float x, y;
  float mov;

  //constructor: 
  Jabon() {
    x = width/2;
    y = height-height/10;
    jabon = loadImage("jabon.png");
    tam = 80;
    mov = 4;
  }

  void actualizar() {
    dibujar();
    mover();
  }

  void dibujar() {
    pushMatrix();
    imageMode(CENTER);
    translate( x_(x), y_(y) );
    image( jabon, x_(0), y_(0), x_(tam), y_(tam) );
    popMatrix();
  }

  void keyPressed() {
    mover();
  }

  void mover() {
    if (keyPressed) {
      if ( keyCode == RIGHT ) {
        x = (x + mov);
      }
      if ( keyCode == LEFT ) {
        x = (x - mov);
      }
      if ( x > width-tam/2 ) {
        x = width-tam/2;
      }
      if ( x < tam/2 ) {
        x = tam/2;
      }
    }
  }

  float getX() {
    return x_(x);
  }

  float getY() {
    return y_(y);
  }

  float getTam() {
    return x_(tam);
  }
}
