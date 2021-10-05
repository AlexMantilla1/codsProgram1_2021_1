import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

Sprite personaje;
//Instanciar el objeto Sprite
StopWatch reloj;
float tiempo;

// posicion del personaje
float posX = 50, posY = 150, velY = 5;
int suelo = 150+24;
boolean saltando = false;

void setup() {
  
  size(200,400);
  
  personaje = new Sprite(this, "Protagonista.png", 4, 4, 0);
  personaje.setFrameSequence(0, 3, 0.3);

  // Para el Sprite(s);
  reloj = new StopWatch();
}


void draw() {

  background(0);
  // Esto me permite actualizar el tiempo transcurrido para las animaciones de los sprites.
  tiempo = (float) reloj.getElapsedTime();
  S4P.updateSprites(tiempo);


  pushMatrix();
  translate(posX, posY);
  personaje.draw();
  popMatrix();
  
  posY = constrain(posY + velY, 0 , suelo);
  println("suelo = " , suelo);
  println("posY = " , posY);
  if(saltando) {
    velY += 0.2;
    println("saltando");
    if(posY >= suelo) {
      saltando = false;
      velY = 5;
    }
  }
  
}

void keyPressed() {
  
  if(key == ' ' && saltando == false) {
    velY = -7;
    saltando = true;
  }
  
}
