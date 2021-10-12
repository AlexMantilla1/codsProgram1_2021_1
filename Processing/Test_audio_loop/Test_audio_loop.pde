import processing.sound.*;

SoundFile sonidoGota;

float volumen = 0.5;

void setup() {

  size(100, 100);

  sonidoGota = new SoundFile(this,"efecto-de-sonido.mp3");
  //sonidoGota.loop();
  textFont(createFont("Arial", 12));
  
}


void draw() {
  
  
  /*
  if (!sonidoGota.isLooping())
    sonidoGota.loop();

  println(sonidoGota.getGain());
  */
}

void keyPressed() {
  
  switch(key) {

  case 'p': // reproducir audio
    if( sonidoGota.isPlaying() == false ) {
      sonidoGota.loop();
    }
    break;
  case 't':   // pausar audio
    if( sonidoGota.isPlaying() ) {
      sonidoGota.pause();
    }
    break;
  }
  
  switch(keyCode) {

  case UP:
    volumen = constrain(volumen + 0.1, 0, 1);
    sonidoGota.amp(volumen);
    break;
  case DOWN:
    volumen = constrain(volumen - 0.1, 0, 1);
    println(volumen);
    sonidoGota.amp(volumen);
    break;
  }
  
}
