/* Santiago Teves | #TP6
 Legajo 70048/3
 Comisión 3
 */

Aventura miaventura;

void setup () {
  size(600, 600);
  surface.setResizable ( true );
  miaventura = new Aventura ( this );
}

void draw() {  
  miaventura.draw();
}

void mousePressed() {
  miaventura.mousePressed();
}

void keyPressed() {
  miaventura.keyPressed();
}
