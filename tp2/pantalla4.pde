void pantalla4() {
  background(0);
  
  image(libro4, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("EL CÁLIZ DE FUEGO", 16, 56 + scroll);
  textSize(24);
  text("Harry es inscripto de forma misteriosa en el Torneo de los Tres Magos, una peligrosa competencia reservada para alumnos mayores de otras escuelas de magia. Obligado a participar, Harry enfrenta desafíos mortales mientras la tensión en el mundo mágico crece. Al final del torneo, una serie de eventos lo lleva directo a una trampa mortal que culmina con el regreso de Voldemort en carne y hueso, marcando el fin de la relativa calma que había durado años.", 232, 80 + scroll, 400, 350);

  if (millis() - tiempoInicio > 5000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 5;
    scroll = 0;
    tiempoInicio = millis();
    }
}
