class Circulo {

  //Atributos
  int posX, posY, diametro;
  color miColor;
  boolean explotar = false, mostrar = true;
  AudioPlayer sonido;
  Sprite explosion;

  

  Circulo(PApplet theApplet, Minim minim, int posX_, int posY_, int diametro_, color miColor_) {

    posX = posX_;
    posY = posY_;
    diametro = diametro_;
    miColor = miColor_;

    explosion = new Sprite(theApplet, "BulletDestroy.png", 8, 8, 0);
    explosion.setFrameSequence(0, 63, 0.1);

    
    sonido = minim.loadFile("sonidoExplosion.mp3");
  }

  void draw() {
    
    
    // Para dibujar la explosion o el circulo
    if (explotar) {
      pushMatrix();
      translate(posX, posY);
      explosion.draw();
      popMatrix();
      if ( explosion.getFrame() >= 63 ) {
        explotar = false;
        sonido.pause();
      }
    } else if (mostrar) {
      fill(miColor);
      circle(posX, posY, diametro);
    }
  }

  void mousePressed() {

    if (dist(mouseX, mouseY, posX, posY) <= (diametro/2) && mostrar) {
      explotar = true;
      mostrar = false;
      if (sonido.isPlaying() == false) {
        sonido.rewind();
        sonido.play();
      }
    }
  }
}
