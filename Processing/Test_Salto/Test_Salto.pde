import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

Sprite personaje;
//Instanciar el objeto Sprite
StopWatch reloj;
float tiempo;

// posicion del personaje
float posX = 50, posY = 150, velY = 5, gravedad = 0.2;
int suelo = 250;
boolean saltando = false;

void setup() {
  
  size(200,400);
  
  personaje = new Sprite(this, "Protagonista.png", 4, 4, 0);
  personaje.setFrameSequence(0, 3, 0.3);

  // Para el Sprite(s);
  reloj = new StopWatch();
  frameRate(10);
}


void draw() {
  //println(frameRate);
  background(0);
  // Esto me permite actualizar el tiempo transcurrido para las animaciones de los sprites.
  tiempo = (float) reloj.getElapsedTime();
  S4P.updateSprites(tiempo);


  pushMatrix();
  translate(posX, posY);
  personaje.draw();
  popMatrix();
  
  posY = constrain(posY + velY, 0 , suelo);
  
  println("velY = " , velY);
  println("posY = " , posY);
  if(saltando) {
    velY += gravedad;
    println("saltando");
    if(posY >= suelo) {
      saltando = false;
      velY = 0;
    }
  }
  
}

void keyPressed() {
  
  if(key == ' ' && saltando == false) {
    velY = -8;
    saltando = true;
  }
  
}
