class Virus{
  //atributos
  float x, y;
  float tam;
  float mov;
  PImage virus_1;
  float grados;
  
  //constructor: 
  Virus(){
  x = random ( tam , width-tam);
  y = random ( -300 , -300);
  tam = random (50 , 100);
  mov = random ( 1 , 3 );
  virus_1 = loadImage("virus_1.png");
  grados = 0;
  }
  
  void actualizar(){
    mover();
    dibujar();
    girar();
  }
  
  void dibujar(){
    push();
    translate(x,y);
    imageMode(CENTER);
    rotate(radians(grados));
    image( virus_1, 0, 0, tam, tam);
    pop();
    }
  
  void mover(){
    y += mov;
  }
  
  void girar(){
    grados++;
    grados = grados%360;
  }
  
  void volver (){
   mov -= 5;
  }
  
  boolean colision ( float x_, float y_, float tam_ ) {
    float distancia = dist (x , y, x_, y_);
    if (distancia < tam/4+tam_/4){    
    return true;
  } else {
    return false;
  }
 }
 
 float getY(){
   return y; 
  }

}
