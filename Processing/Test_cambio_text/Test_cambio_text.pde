
String textosMostrar[];
int numTexto = 0;
int maxTexto = 4;
int posX = 200, posY = 200, anchoElipse = 250, altoElipse = 80;

boolean opcionElegida = false;
CuadroOpcion opciones[];
int cantOpciones = 4;

int puntos = 0;

void setup(){
  
  size(600,500);
  textosMostrar = new String[maxTexto];
  textosMostrar[0] = "Hola Como está?";
  textosMostrar[1] = "Yo estoy muy bien";
  textosMostrar[2] = "Cómo se llama usted?";
  textosMostrar[3] = "Yo me llamo Alex";
  textFont(createFont("Arial", 24));
  textAlign(CENTER);
  frameRate(5);
  
  
  opciones = new CuadroOpcion[cantOpciones];
  for(int i = 0; i < cantOpciones; i++) {
    
    if(i == 2) opciones[i] = new CuadroOpcion("Opcion "+ str(i), 400, 100 + 100*(i), 250, 80, true);
    else opciones[i] = new CuadroOpcion("Opcion "+ str(i), 400, 100 + 100*(i), 250, 80, false);
    
  }
  
}


void draw() {
  
  background(0);
  fill(125,125,125);
  ellipse(posX , posY - (textAscent()/2), anchoElipse, altoElipse );
  fill(0);
  text(textosMostrar[numTexto], posX , posY);
  
  for(int i = 0; i < cantOpciones; i++) {
    
    opciones[i].draw();
    
  }
  
  println(puntos);
}

void keyPressed() {
  
  numTexto++;
  if(numTexto == maxTexto) numTexto = 0;
  
}

void mousePressed() {
  
  for(int i = 0; i < cantOpciones; i++) {
    
    if(opciones[i].esRtaCorrecta() == true) {
      puntos++;
    }
    
  }
}
