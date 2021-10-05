import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;


/* 
 * Este codigo tiene un error!
 * Todos los Sprites y sonidos de los diferentes objetos...
 * parecieran ser el mismo. Se preducen al tiempo ... suenan al 
 * tiempo y no encontramos forma de independizar... aun...
 *
 * Habría que buscar en google cómo se hace...
 */


//Instanciar el objeto reloj para el Sprite
StopWatch reloj;
float tiempo;

// Para el sonido
Minim minim;

// objetos circulos
Circulo cirAzul, cirRojo;


//Circulo vecCir[];
//int cantCir = 45;

void setup() {

  size(450, 450);

  // Para el sonido(s):
  minim = new Minim(this);

  // Para el Sprite(s);
  reloj = new StopWatch();

  // Para los circulos
  cirAzul = new Circulo(this, minim, 150, 150, 50, color(0, 0, 255));
  cirRojo = new Circulo(this, minim, 300, 300, 50, color(255, 0, 0));
  
  /*
  vecCir = new Circulo[cantCir];
  for (int i = 0; i < cantCir; i++) {
    vecCir[i] = new Circulo(this, minim, int(random(0, 450)), int(random(0, 450)), 50, color(125, 125, 125));
  }
  */
}


void draw() {

  background(0);


  // Esto me permite actualizar el tiempo transcurrido para las animaciones de los sprites.
  tiempo = (float) reloj.getElapsedTime();
  S4P.updateSprites(tiempo);
  
  
  
  
  cirAzul.draw();
  cirRojo.draw();
 /*
  for (int i = 0; i < cantCir; i++) {
    vecCir[i].draw();
  }
  */
}


void mousePressed() {
  
  
  cirAzul.mousePressed();
  cirRojo.mousePressed();
  
  /*
  for (int i = 0; i < cantCir; i++) {
    vecCir[i].mousePressed();
  }
  */
}
