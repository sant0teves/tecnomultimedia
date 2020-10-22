class Pantalla {
  //atributos
  String ganaste; 
  String perdiste;
  String reiniciar;
  int x,y;
  int tam, tam_;
  
  //constructor
  Pantalla(){
  ganaste = "¡Ganaste!";
  perdiste = "perdiste...";
  reiniciar = " click para reiniciar <";
  x = width/2;
  y = height/2;
  tam = 30;
  tam_ = 12;
  textAlign(CENTER);
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
