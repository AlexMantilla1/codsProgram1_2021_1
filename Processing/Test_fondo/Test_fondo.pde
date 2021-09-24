
PImage fondos[];
Boton elBoton;
int imgActual = 0;

void setup() {
  
  size(500,200);
  fondos = new PImage[2];
  
  fondos[0] = loadImage("Fondo1.jpeg");
  fondos[1] = loadImage("Fondo2.jpeg");
  
  elBoton = new Boton(350,50,50,50);
  
  
}


void draw() {
  
  background(0);
  
  image(fondos[imgActual],0,0,319,158);
  elBoton.dibujar();
  imgActual = elBoton.bottonPressed();
  
}

void mousePressed() {
  elBoton.verificarClic();
}
