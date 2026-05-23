int pantalla = 0;

PFont miFuente;
float opacidad = 0;

PImage rayo;
float opacidadRayo = 255;

float fadePantalla = 0;

PImage libro1;
PImage libro2;
PImage libro3;
PImage libro4;
PImage libro5;
PImage libro6;
PImage libro7;

void setup(){
  size(640, 480);
  miFuente = loadFont("AFontwithSerifs-48.vlw");
  
  rayo = loadImage("rayo.png");
  libro1 = loadImage("01.jpeg");
  libro2 = loadImage("02.jpeg");
  libro3 = loadImage("03.jpeg");
  libro4 = loadImage("04.jpeg");
  libro5 = loadImage("05.jpeg");
  libro6 = loadImage("06.jpeg");
  libro7 = loadImage("07.jpeg");
}

void draw(){
  ondaY += 0.5 * ondaZ;
  if (ondaY > 8 || ondaY < -8) {
  ondaZ *= -1;
  }
  
  if (pantalla == 0) {
    background(0);
    
    if (frameCount % 5 == 0) {
    opacidadRayo = random(100, 255);
    }
    tint(255, opacidadRayo);
    image(rayo, 0, 0, 500, 400);
    noTint();
    
    opacidad += 2;
  
    fill(255, 255, 255, opacidad);
    textFont(miFuente);
    text("H A R R Y  P O T T E R", 96, 220);
    textSize(24);
    text("y  mis  ganas  de  aprobar", 216, 252);
  
  //súper botón
    if (mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
    fill(200, 200, 200); // colorx encima
    }
    else {
    fill(255, 255, 255, opacidad);
    }
    rect(248, 268, 144, 48);
  
    fill(0);
    textSize(40);
    text("iniciar", 280, 300);
  }
  
  if (pantalla == 1) {
  pantalla1();
  }
  if (pantalla == 2) {
  pantalla2();
  }
  if (pantalla == 3) {
  pantalla3();
  }
  if (pantalla == 4) {
  pantalla4();
  }
  if (pantalla == 5) {
  pantalla5();
  }
  if (pantalla == 6) {
  pantalla6();
  }
  if (pantalla == 7) {
  pantalla7();
  }
  if (pantalla == 8) {
  pantalla8();
  }
}

void mouseClicked() {
  fadePantalla = 0;
  
  if (pantalla == 8 && mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
    pantalla = 0;
    scroll = 0;
    tiempoInicio = millis();
    opacidad = 0;
  }
  else if (mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
    pantalla = 1;
  }

}
