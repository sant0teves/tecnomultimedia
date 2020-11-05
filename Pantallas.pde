class Pantalla {
  //atributos
  String ganaste; 
  String perdiste;
  String reiniciar;
  String inicio;
  int x,y;
  int tam, tam_;
  
  //constructor
  Pantalla(){
  inicio = "Utiliza las flechas del teclado para mover el jabón y evitar que el virus llegue al suelo\nempujando las particulas para que vuelven por donde vinieron ";
  ganaste = "¡Ganaste!";
  perdiste = "perdiste...";
  reiniciar = " click para reiniciar <";
  x = width/2;
  y = height/2;
  tam = 30;
  tam_ = 12;
  textAlign(CENTER);
  }
  
  void inicio(){
   textSize(tam_);
   text(inicio,x,y);
  }
  
   void perdiste(){
   textSize(tam);
   text(perdiste,x,y);
   reiniciar();
  }
  
  void ganaste(){
   textSize(tam);
   text(ganaste,x,y);
   reiniciar();
  }
   
   void reiniciar(){
   textSize(tam_);
   text(reiniciar, x, y+tam_);
   }
   
  boolean click(){
  if (mousePressed){
    return true;
  } else {
    return false; 
  }
 }   
}
