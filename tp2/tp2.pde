int pantalla = 0;
PFont miFuente;
float opacidad = 0;

void setup(){
  size(640, 480);
  miFuente = loadFont("AFontwithSerifs-48.vlw");
}
void draw(){
  if (pantalla == 0) {
      background(0);
  
    opacidad += 2;
  
    fill(255, 255, 255, opacidad);
    textFont(miFuente);
    text("H A R R Y  P O T T E R", 96, 220);
    textSize(24);
    text("y  mis  ganas  de  aprobar", 216, 252);
  
  //súper botón
    rect(248, 268, 144, 48);
    if (mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
    fill(200, 200, 200); // x encima
    }
    else {
    fill(255, 255, 255, opacidad);
    }
    rect(248, 268, 144, 48);
  
    fill(0);
    textSize(40);
    text("iniciar", 280, 300);
  }
}

void mouseClicked() {
  if (mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
    pantalla = 1;
  }
}
