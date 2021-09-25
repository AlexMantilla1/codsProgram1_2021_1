Volante objVolante;

void setup() {
  size(1000,1000);
  objVolante = new Volante(100,100,500,500);
}


void draw() {
  background(255);
  objVolante.dibujar();
  
}
