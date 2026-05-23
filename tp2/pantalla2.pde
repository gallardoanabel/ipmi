int Tiping2 = 0;
String desc2 = "Durante su segundo año en Hogwarts, Harry comienza a escuchar una voz misteriosa que nadie más puede oír. Pronto los pasillos del colegio se llenan de terror: estudiantes y fantasmas aparecen petrificados y las paredes anuncian que la Cámara Secreta ha sido abierta. Harry deberá enfrentarse a sus propias dudas y a un enemigo que actúa desde las sombras, mientras descubre que el pasado de Hogwarts guarda secretos más oscuros de lo que imaginaba.";

void pantalla2() {
  background(0);
  
  image(libro2, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("LA CÁMARA SECRETA", 16, 56 + scroll + ondaY);
  textSize(24);
  if (Tiping2 < desc2.length() - 1) {
  Tiping2 += 2;
  }
  text(desc2.substring(0, Tiping2), 232, 80 + scroll, 400, 350);

  if (millis() - tiempoInicio > 6000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 3;
    scroll = 0;
    tiempoInicio = millis();
    }
}
