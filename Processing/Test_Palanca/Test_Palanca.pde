
int posX = 100, posY = 100, diametro= 80;
float vel = 0;
int rojo = 0, verde = 255, azul = 85;

int alto = 300;

void setup() {

  size(500, 500);
}

void draw() {

  background(0);

  if ( dist( posX, posY, mouseX, mouseY ) <= diametro/2 ) { // Estoy dentro del círculo

    if ( mousePressed ) {
      posY = constrain(mouseY, 100, 400);

      vel = map(posY, 100, 400, 0, 140);
      calcularColores();

      alto = constrain(mouseY-100, 0, 300);
    }
    fill(rojo, verde, azul);
  } else { // Estoy fuera del círculo
    fill(255);
  }


  circle(posX, posY, diametro);


  if ( dist( posX, posY, mouseX, mouseY ) <= diametro/2 ) { // Estoy dentro del círculo

    if ( mousePressed ) {
      vel = 140 - vel;
      calcularColores();
    }
    fill(rojo, verde, azul);
  } else { // Estoy fuera del círculo
    fill(255);
  }


  rect(400, 100, 50, alto);
}


void calcularColores() {

  //Para el rojo
  if (vel < 20) rojo = 0;
  else if ( vel >= 20 && vel <= 80 ) rojo = int(4.2536 * vel - 84.821);
  else rojo = 255;

  //Para el verde
  if (vel < 80) verde = 255;
  else verde = int(-4.2536 * vel + 595.75);

  //Para el azul
  if (vel < 10) azul = int( -4.25 * vel + 85.187 );
  else azul = 0;
}
