float scrollX = 0;

int Tiping7 = 0;
String desc7 = "Harry, Ron y Hermione abandonan Hogwarts para embarcarse en una peligrosa misión: encontrar y destruir los Horrocruxes antes de enfrentarse a Voldemort. Sin la guía de Dumbledore, los tres amigos atraviesan momentos de duda, miedo y traición mientras el mundo mágico cae bajo el régimen del terror. Todo culmina en la Batalla de Hogwarts, un enfrentamiento épico donde el sacrificio, el amor y la valentía decidirán el destino de ambos mundos.";

void pantalla7() {
  background(0);
  
  image(libro7, 16 + scrollX, 80, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("LAS RELIQUIAS DE LA MUERTE", 16 + scrollX, 56 + ondaY);
  textSize(24);
  if (Tiping7 < desc7.length() - 1) {
  Tiping7 += 2;
  }
  text(desc7.substring(0, Tiping7), 232 + scrollX, 80 + scroll, 400, 350);

  if (millis() - tiempoInicio > 6000) {
  scrollX -= 10;
  }
  if (scrollX < -640) {
  pantalla = 8;
  scrollX = 0;
  tiempoInicio = millis();
  opacidad = 0;
  }
}
