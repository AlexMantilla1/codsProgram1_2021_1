

Boton resetButton;
Juagador alex;
int imgActual = 0;
boolean resetPressed = false;

void setup() {
  
  size(600,600);
  
  alex = new Juagador(10,10,50,50);
  resetButton = new Boton(350,50,50,50);
}


void draw() {
  background(0);
  alex.dibujar();
  resetButton.dibujar();
  println(resetPressed);
  
  // Hacer el reset
  if(resetPressed) {
    
    alex.reset();
    
    
    resetPressed = false;    
  }
  
  
  
}

void mousePressed() {
  resetPressed = resetButton.verificarClic();
}
