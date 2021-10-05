
float g = 0.3; // pixeles/s^2;
float posX = 50, posY = 300;

int x, y, diametro = 50;
double velY = -8, velX = 5;
double t = 0;

int MAX = 600;

boolean click = false;

void setup() {

  size(600, 600);
  frameRate(30);
}

void draw() {

  background(0);

  fill(255);
  circle(int(posX), int(posY), diametro);

  if (click) {
    t += (1/frameRate);
    println(velY);
    velY += g*t;
    posY += velY;
    posX += velX;
    if(posY >= MAX) {
      click = false;
      t = 0;
      velY = -8;
      velX = 5;
      posX = 50;
      posY = 300;
      
    }
  } 
  
}

void mousePressed() {
  
}

void mouseReleased() {
  if(mouseButton == LEFT) {
    click = true;
  }
  
}
