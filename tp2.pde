//galaxia
PImage fondo;
//naves
PImage nave_1;
PImage nave_2;
//fuentes
PFont fuente_1, fuente_2, fuente_3, fuente_4;
//variables
float posY;
float naves;
float cambiar_opacidad1, cambiar_opacidad2;
float posX;
float posXb;
float posXc;

void setup () {
  size(600,600); 
//imagen de créditos y fuentes
  fondo=loadImage("fondo.jpg");
  fuente_1 = createFont("SF Distant Galaxy Alternate",32);
  fuente_2 = createFont("SF Distant Galaxy Alternate Italic",32);
  fuente_3 = loadFont("CopenhagenGrotesk-48.vlw");
  fuente_4 = loadFont("CopenhagenGrotesk-Bold-48.vlw");
//Variables
  posY = height; 
  nave_1 = loadImage("nave1.png");
  nave_2 = loadImage("nave2.png");
  naves = 50;
  cambiar_opacidad1 = 255;
  cambiar_opacidad2 = 0;
  posX = width*4;
  posXb = -100*15;
  posXc = -200*10;
 } 
  
void draw() {
//imagen creditos asignada como fondo
    background(fondo);

//naves
  image(nave_1, width-mouseX-30, height-mouseY-30, naves,naves);
  image(nave_2, mouseX-30, mouseY-30, naves, naves);  
  
  
//cambiar valor posY
    posY = posY-0.7;
    
    
//Títulos #1 Dirección
  pushStyle();
  colorMode(HSB);
  fill(cambiar_opacidad1, cambiar_opacidad1, cambiar_opacidad1); 
  textAlign(CENTER);
  textFont(fuente_3);
  textSize(12);
  text("escrita y dirigida por", height/2, width/2); 
  textFont(fuente_1);
  textSize(22);
  text("George Lucas", height/2, width/2+20); 
  cambiar_opacidad1 = cambiar_opacidad1-0.5;
  posX = posX-1;
  popStyle();
    
//titulo #2
  fill (255,232,31);
  textFont (fuente_1);
  textAlign(CENTER);
  textSize( map(posY, height/2,-70,100,20));
  text ("Star Wars", height/2 , posY+150);
  



//titulo #3 
  fill (200);
  textSize(12);
  textFont (fuente_2);
  textAlign(CENTER);
  textSize( map(posY, height/2,-70,12,12));
  text("Mark Hamill como:", height/2-120 , posY+350);
  text("Harrison Ford como:", height/2-120 , posY+370);
  text("Carrie Fisher como:", height/2-120 , posY+390);
  text("Peter Cushing como:", height/2-120 , posY+410);
  text("Alec Guinness como:", height/2-120 , posY+430);
  text("Anthony Daniels como:", height/2-120 , posY+450);
  text("Kenny Baker como:", height/2-120 , posY+470);
  text("Peter Mayhew como:", height/2-120 , posY+490);       
  text("David Prowse como:", height/2-120 , posY+510);   
  fill(255);
  textFont (fuente_2);
  textSize(12);
  text("Luke Skywalker", height/2+120 , posY+350);
  text("Han Solo", height/2+120 , posY+370);
  text("Princesa Leia Organa", height/2+120 , posY+390);
  text("Gran Moff Tarkin", height/2+120 , posY+410);
  text("Ben Kenobi", height/2+120 , posY+430);
  text("C-3PO", height/2+120 , posY+450);
  text("R2-D2", height/2+120 , posY+470);
  text("Chewbacca", height/2+120 , posY+490);
  text("Darth Vader", height/2+120 , posY+510);
 
//titulo 3
  fill(posX,232,131); 
  textFont(fuente_4);
  textSize(13);
  textAlign(CENTER);
  text("Drewe Hamley como Líder Rojo,", posX, 230);
  text("Dennis Lawson como Rojo Dos (Wedge),", posX, 240);
  text("Colin Higgins como Falso Wedge (sin acreditar),", posX, 250);
  text("David Ankrum como la voz de Wedge Antilles (sin acreditar),", posX, 260);
  text("Garrick Hagon como Rojo Tres (Biggs),", posX, 270);
  text("Jack Klaff como Rojo Cuatro (John D)", posX, 280);
  text("William Hootkins como Rojo Seis (Porkins),", posX, 290);
  text("James Earl Jones como la voz de Darth Vader,", posX, 300); 
  text("Phil Brown como Tío Owensd,", posX, 310); 
  text("Shelagh Fraser como Tía Beru,", posX, 320); 
  text("Jack Purvis como Jefe Jawa,", posX, 330); 
  text("Alex McCrindle como General Dodonna,", posX, 340); 
  text("Eddie Byrne como General Willard,", posX, 350); 
  text("Michael Bell como la voz del General Willard,", posX, 360); 
  posX = posX-0.1;

//Títulos #4 música
 
  fill(255,255,255); 
  textAlign(CENTER);
  textFont(fuente_3);
  textSize(10);
  text("Música compuesta por por", posXb, 100); 
  fill(255,232,31); 
  textFont(fuente_2);
  textSize(18);
  text("John Williams", posXb, 120); 
  posXb++;
 
  fill(255,255,255); 
  textAlign(CENTER);
  textFont(fuente_3);
  textSize(10);
  text("Música interpretada por", posXc-20, width-120); 
  fill(255,232,31); 
  textFont(fuente_2);
  textSize(18);
  text("Orquesta Sinfónica de Londres", posXc, width-100); 
  posXc++;
}


//disparos naves
void mousePressed(){
  stroke(255,0,50);
  strokeWeight(naves/10);
  line(width-mouseX, height-mouseY, mouseX, mouseY);
  naves+=2;
}

void keyPressed(){
  stroke(0,44,255);
  strokeWeight(naves/10);
  line(width-mouseX, height-mouseY, mouseX, mouseY);
  naves-=2;
}
