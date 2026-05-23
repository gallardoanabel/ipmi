void pantalla6() {
  background(0);
  
  image(libro6, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("EL MINISTERIO DEL PRÍNCIPE", 16, 56 + scroll);
  textSize(24);
  text("Con Voldemort actuando abiertamente, el mundo mágico vive en un clima de guerra y desconfianza. Dumbledore toma a Harry bajo su tutela para explorar los recuerdos del pasado de Voldemort y descubrir el secreto de su inmortalidad: los Horrocruxes. Mientras tanto, un viejo libro de pociones anotado por alguien que se hace llamar el Príncipe Mestizo guía a Harry de formas inesperadas. El año termina con una pérdida que sacude los cimientos del mundo mágico para siempre.", 232, 80 + scroll, 400, 350);

  if (millis() - tiempoInicio > 5000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 7;
    scroll = 0;
    tiempoInicio = millis();
    }
}
