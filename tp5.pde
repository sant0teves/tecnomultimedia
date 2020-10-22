// Santiago Teves | #TP5
// Legajo 70048/3
// Comisión 3
// El juego serviría de introducción para iniciar la aventura gráfica

Juego mijuego;

void setup () {
  size(600,600);
  surface.setResizable(true);
  mijuego = new Juego();
}

void draw() {
mijuego.draw();

}
