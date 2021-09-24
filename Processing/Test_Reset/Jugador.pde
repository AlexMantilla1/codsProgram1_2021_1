class Juagador {

  int posX, posY, ancho, alto, vel = 5;
  int posX_init, posY_init;

  Juagador(int posX_, int posY_, int ancho_, int alto_) {

    posX = posX_;
    posY = posY_;
    ancho = ancho_;
    alto = alto_;
    
    posX_init = posX_;
    posY_init = posY_;
  }

  void dibujar() {

    fill(0, 0, 255);
    rect(posX, posY, ancho, alto);
    moverse();
  }


  void moverse() {

    if ( keyPressed && key == CODED ) {

      switch(keyCode) {
      case LEFT:
        posX -= vel;
        break;
      case RIGHT:
        posX += vel;
        break;
      case UP:
        posY -= vel;
        break;
      case DOWN:
        posY += vel;
        break;
      }
    }
  }
  
  void reset(){ 
    posX = posX_init;
    posY = posY_init;
  }

  
}
