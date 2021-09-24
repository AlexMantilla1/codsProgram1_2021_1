class Boton {
  
  int posX,posY,ancho,alto;
  
  Boton(int posX_, int posY_, int ancho_, int alto_) {
    
    posX = posX_;
    posY = posY_;
    ancho = ancho_;
    alto = alto_;
    
  }
  
  void dibujar() {
    
    fill(200,0,0);
    rect(posX,posY,ancho,alto);
    
  }
  
  
  boolean verificarClic() {
    boolean retorno = false;
    if( mousePressed && mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto ){
      retorno = true;
    }
    return retorno;
  }
  
  
  
}
