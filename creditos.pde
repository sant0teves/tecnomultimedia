void creditos() {
  image(creditos, eX(0), eY(0), eX(600), eY(600) );
  textSize(eX(18));
  textAlign(CENTER);
  text( "Escrita y dirigida por", width/2, height/2-eY(10));
  textSize(eX(32));
  text( "Santiago Teves", width/2, height/2+eY(20) );
  textSize(eX(16));
  text(">>> volver a empezar <<<", width/2 , eY(580) );
}
