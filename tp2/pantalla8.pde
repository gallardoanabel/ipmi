float opacidadFin = 255;

void pantalla8() {
  background(0);
  
  if (frameCount % 5 == 0) {
    opacidadFin = random(100, 255);
    }
  fill(255, 255, 255, opacidadFin);
  textSize(80);
  text("F  I  N", 236, 220);
  
  opacidad += 1;
  if (mouseX >= 248 && mouseX <= 400 && mouseY >= 268 && mouseY <= 320) {
  fill(200, 200, 200);
  }
  else {
  fill(255, 255, 255, opacidad);
  }
  rect(248, 268, 144, 48);
  
  fill(0);
  textSize(40);
  text("reiniciar", 265, 300);
  
} 
