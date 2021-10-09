import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer sonidoGota;

float volumen = 0.5;

void setup() {

  size(100, 100);

  minim = new Minim(this);
  sonidoGota = minim.loadFile("efecto-de-sonido.mp3");

  textFont(createFont("Arial", 12));
}


void draw() {
  if (!sonidoGota.isLooping())
    sonidoGota.loop();

  println(sonidoGota.getGain());
}

void keyPressed() {

  switch(keyCode) {

  case UP:
    sonidoGota.shiftVolume(volumen, volumen + 0.1, 100);
    volumen = constrain(volumen + 0.1, 0, 1);
    break;
  case DOWN:
    sonidoGota.shiftVolume(volumen, volumen + 0.1, 100);
    volumen = constrain(volumen - 0.1, 0, 1);
    break;
  }
}
