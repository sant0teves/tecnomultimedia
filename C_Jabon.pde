class Jabon{
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
  
  void dibujar(){
    pushMatrix();
    imageMode(CENTER);
    translate(x, y);
    image( jabon, 0, 0, tam, tam);
    popMatrix();
  }
  
  void keyPressed() {
  mover();
  }

  void mover(){
  if (keyPressed) {
    if( keyCode == RIGHT ) {
      x = (x + mov);
      }
    if( keyCode == LEFT ) {
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
  
  float getX(){
   return x; 
  }
  
   float getY(){
   return y; 
  }

 float getTam(){
   return tam; 
  }
  
}
