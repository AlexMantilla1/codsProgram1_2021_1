// Variables del triangulo
int baseTriangulo = 100, alturaTriangulo = 100;
int posXTriangulo = 400, posYTriangulo = 400;
int velX = 8, velY = 4;

// Variables del circulo
int posXCirculo = 400, posYCirculo = 400;



int cnt = 0;



boolean hiceClick = false; 

void setup() {
  size(600,600);
  frameRate(60);
  
}

void draw() {
  background(0);
  // Dibujar el triángulo:
  //println(frameRate);
  fill(255);
  triangle(posXTriangulo, posYTriangulo, posXTriangulo + (baseTriangulo/2), posYTriangulo + alturaTriangulo, posXTriangulo - (baseTriangulo/2), posYTriangulo + alturaTriangulo);
  if(hiceClick) circle(posXCirculo, posYCirculo, 20);
}

// Esta función se ejecuta automáticamente cuando se presiona una tecla (como su nombre lo indica)
void keyPressed() {
  
  print("Se presionó una tecla! fue ");
  println(keyCode);
  
  switch(keyCode) {
    
    case LEFT:
      posXTriangulo -= velX;
      break;
    case RIGHT:
      posXTriangulo += velX;
      break;
    case UP:
      posYTriangulo -= velY;
      break;
    case DOWN:
      posYTriangulo += velY;
      break;
      
  }
  
  switch(key) {
    
    case 'a':
      posXTriangulo -= velX;
      break;
    case 'd':
      posXTriangulo += velX;
      break;
    case 'w':
      posYTriangulo -= velY;
      break;
    case 's':
      posYTriangulo += velY;
      break;
    case ' ':
      fill(255,0,0);
      break;
      
  }
  
}

// Esta función se ejecuta automáticamente cuando se presiona un botón del mouse (como su nombre lo indica)
void mousePressed() {
  cnt ++;
  print("Se presionó un botón del mouse! fue ");
  println(mouseButton);
  
  if(mouseButton == LEFT) {
    
     // disparar figura que sale de la punta del triángulo
     hiceClick = true;
     // Crear figura
     // que se desplace hacia arriba
     posYCirculo -= 10;
      
  }
  
}
