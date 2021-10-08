import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer sonidoGota;

void setup() {
  
  size(100,100);
  
  minim = new Minim(this);
  sonidoGota = minim.loadFile("efecto-de-sonido.mp3");
  
  textFont(createFont("Arial", 12));
  
}


void draw() {
  if(!sonidoGota.isLooping())
    sonidoGota.loop();
    
    
}
