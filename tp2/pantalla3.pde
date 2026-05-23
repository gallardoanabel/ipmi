void pantalla3() {
  background(0);
  
  image(libro3, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("EL PRISIONERO DE AZKABAN", 16, 56 + scroll);
  textSize(24);
  text("Sirius Black, considerado uno de los seguidores más peligrosos de Voldemort, escapa de Azkaban, la prisión mágica más temida del mundo mágico. Todo indica que va tras Harry. Hogwarts se llena de Dementores, criaturas que devoran la felicidad, y Harry comienza a enfrentarse a sus miedos más profundos. Sin embargo, la verdad sobre Sirius Black y el pasado de sus padres resultará ser mucho más compleja y desgarradora de lo que cualquiera esperaba.", 232, 80 + scroll, 400, 350);

  if (millis() - tiempoInicio > 5000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 4;
    scroll = 0;
    tiempoInicio = millis();
    }
}
