class CuadroOpcion {

  String texto;
  int posX, posY, ancho, alto;
  boolean esRtaCorrecta;

  CuadroOpcion(String texto_, int posX_, int posY_, int ancho_, int alto_, boolean esRtaCorrecta_) {

    texto = texto_;
    ancho = ancho_;
    alto = alto_;
    posX = posX_;
    posY = posY_;
    esRtaCorrecta = esRtaCorrecta_;
    
  }

  void draw() {
    if( mouseX > posX-(ancho/2) && mouseX < posX + (ancho/2) && mouseY > posY-(alto/2)- (textAscent()/2) && mouseY < posY + (alto/2)- (textAscent()/2) ) fill(0,0,200);
    else fill(125,0,0);
    ellipse(posX , posY - (textAscent()/2), ancho, alto);
    fill(0);
    text(texto, posX, posY);
  }
  
  boolean esRtaCorrecta() {
    boolean rta = false;
    
    if( mouseX > posX-(ancho/2) && mouseX < posX + (ancho/2) && mouseY > posY-(alto/2) && mouseY < posY + (alto/2) ) rta = esRtaCorrecta;
    
    return rta;
  }
}
