//proporcion de elementos para resizable en X
float eX( float valor_ ) {
  return map( valor_, 0 , 600 , 0 , width );
  
}

//proporcion de elementos para resizable en Y
float eY( float valor_ ) {
  return map( valor_, 0 , 600 , 0 , height );
}


//función reciclable para avanzar en la aventura gráfica
boolean clickOpcion ( float a_, float b_, float radio_)
{
  if (dist ( mouseX, mouseY, eX(a_), eY(b_))<eX(radio_)) {
  return true;
  }
  else {
  return false;  
  }
}
  
//carga de audio  
void bandaSonora ()   
{
  Minim gestor;
  AudioPlayer player;
    {
    gestor = new Minim(this);
    player = gestor.loadFile("Apocalypse.mp3");
    player.setGain(-6);
    player.loop(); 
    } 
}  

//iniciar caida de virus para minijuego
void inicializador() {
    for ( int i = 0 ; i < c ; i++ ) {
    x[i] = random( eX(50), width-eX(50) );
    y[i] = random(-eY(100), -eY(2000));
    escala[i] = random( eX(50), eY(140) ); 
    mov[i] = random( eX(0.7), eY(2) );
    virus_1[i] = loadImage("virus_1.png");
    }
}

//función para avanzar en la aventura si superás el minijuego
void win() {
pantalla = 1;
}

//función para pantalla de derrota y restart 
void lost() {
pantalla = 16;
}
