int Tiping5 = 0;
String desc5 = "El Ministerio de Magia, negando el regreso de Voldemort, desacredita públicamente a Harry y a Dumbledore. Hogwarts cae bajo el control de Dolores Umbridge, una profesora cruel que prohíbe la enseñanza real de defensa. Hartos de la inacción, Harry y sus amigos fundan en secreto el Ejército de Dumbledore para prepararse para la guerra que se avecina. El año concluye con una batalla devastadora en el Ministerio que deja una pérdida irreparable en la vida de Harry."; 

void pantalla5() {
  background(0);
  
  image(libro5, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("LA ÓRDEN DEL FÉNIX", 16, 56 + scroll + ondaY);
  textSize(24);
  if (Tiping5 < desc5.length() - 1) {
  Tiping5 += 2;
  }
  text(desc5.substring(0, Tiping5), 232, 80 + scroll, 400, 350);
  
  if (millis() - tiempoInicio > 6000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 6;
    scroll = 0;
    tiempoInicio = millis();
    }
}
