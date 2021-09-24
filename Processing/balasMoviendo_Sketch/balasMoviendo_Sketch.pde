int linea1 = 200, linea2 = 450;
int posXBala = 200, posYBala = 450, diamBala = 20, velVala = 3;

int moverse = 45;  // 45 para NO se mueva la bala, 50 se Mueva la bala

void setup() {
  size(650, 650);
}


void draw() {

  background(0);
  stroke(255);
  line(0, linea1, 650, linea1);
  line(0, linea2, 650, linea2);
  


  if (keyPressed) {
    if (key == ' ') {
      moverse = 50;
    }
  }

  // Mover la bala
  if (moverse == 50) {
    circle(posXBala, posYBala, diamBala);
    posYBala = constrain( posYBala - velVala, linea1 + (diamBala/2), linea2 - (diamBala/2) );

    if ( posYBala == linea1 + (diamBala/2) ) {
      posYBala = linea2 - (diamBala/2);
      moverse = 45;
    }
  }
  
}
