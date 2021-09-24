class Boton {
  
  int posX,posY,ancho,alto;
  int valorActual = 0;
  
  Boton(int posX_, int posY_, int ancho_, int alto_) {
    
    posX = posX_;
    posY = posY_;
    ancho = ancho_;
    alto = alto_;
    
  }
  
  void dibujar() {
    
    fill(0,0,255);
    rect(posX,posY,ancho,alto);
    
  }
  
  
  int bottonPressed() {
    
    return valorActual;
  }
  
  void verificarClic() {
    if( mousePressed && mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto ){
      valorActual = 1 - valorActual;
      
    }
  }
  
  
  
}
