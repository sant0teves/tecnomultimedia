class Pantallas {
  //atributos
  PImage fondo, fondo_2;
  float tam, x, y, posX, posY, posX_, posY_;
  String restart, creditos, archivoimagen_, autor_, autor ;
  PFont fuente_;

  //constructor: 
  Pantallas(String archivoimagen_, float posX, float posY) {
    fondo = loadImage(archivoimagen_);
    posX_ = posX;
    posY_ = posY;
    tam = 600;
    x = 150;
    y = 150;
    restart = "> Volver a empezar"; 
    creditos = "Créditos";
    autor = "Escrita y dirigida por";
    autor_ = "Santiago Teves";
    fuente_ = loadFont("Portada-12.vlw");
  }

  //funcionalidad:
  void draw () {
  }

  void pantalla() {
    push();
    translate( x_(x), y_(y) );
    imageMode(CENTER);
    image( fondo, x_(x), y_(y), x_(tam), y_(tam) );
    pop();
    textFont(fuente_);
    text(restart, x_(posX_), y_(posY_) );
  }

  void final_() {
    push();
    translate( x_(x), y_(y));
    imageMode(CENTER);
    image( fondo, x_(x), y_(y), x_(tam), y_(tam) );
    pop();
    textFont(fuente_);
    text( creditos, x_(posX_), y_(posY_) );
  }

  void creditos_() {
    push();
    translate( x_(x), y_(y));
    imageMode(CENTER);
    image( fondo, x_(x), y_(y), x_(tam), y_(tam) );
    pop();
    push();
    textAlign(CENTER);
    textFont(fuente_);
    text( restart, x_(posX_), y_(posY_) );
    text( autor, width/2, height/2-10 );
    text( autor_, width/2, height/2+10 );
    pop();
  }

  // boton para interactuar con la aventura
  boolean click ( float x_, float y_, float tam_)
  {
    if (dist ( mouseX, mouseY, x_(x_), y_(y_) )< tam_) {
      return true;
    } else {
      return false;
    }
  }
}
