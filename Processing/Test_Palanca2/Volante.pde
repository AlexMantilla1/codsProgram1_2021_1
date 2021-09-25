
class Volante {
  
  PImage imagenVolante;
  int posX, posY, ancho, alto;
  float angulo = 0, angulo_rad;
  
  Volante(int posX, int posY, int ancho, int alto) {
    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;
    
    imagenVolante = loadImage("Volante.jpg");
    
  }
  
  void dibujar() {
    
    pushMatrix();
    angulo_rad = angulo*PI/180;
    rotate(angulo_rad);
    translate(posX-(ancho/2), posY-(alto/2));
    
    image(imagenVolante, 0 , 0, ancho, alto);
    
    angulo++;
    
    popMatrix();
    
  }
  
  
  
  
}
