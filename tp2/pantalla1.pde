int tiempoInicio = 0;
float scroll = 0;

float ondaY = 0;
float ondaZ = 1;

int Tiping = 0;
String desc1 = "Harry Potter es un niño huérfano que vive maltratado por sus tíos, sin saber nada de su verdadero origen. Todo cambia cuando descubre que es un mago y es admitido en Hogwarts, una escuela de magia oculta al mundo. Entre clases de pociones, vuelos en escoba y la amistad de Ron y Hermione, Harry descubre que su pasado está ligado a un oscuro hechicero que asesinó a sus padres y que ahora busca recuperar su poder a través de un objeto legendario.";

void pantalla1() {
  background(0);

  tint(255, fadePantalla);
  
  image(libro1, 16, 80 + scroll, 200, 300); //x, y, ancho, alto
  
  fill(255);
  textSize(46);
  text("LA PIEDRA FILOSOFAL", 16, 56 + scroll + ondaY);
  textSize(24);
  if (Tiping < desc1.length() - 1) {
  Tiping += 2;
  }
  text(desc1.substring(0, Tiping), 232, 80 + scroll, 400, 350);


  if (millis() - tiempoInicio > 7000) {
    scroll -= 10;
  }

  if (scroll < -480) {
    pantalla = 2;
    scroll = 0;
    tiempoInicio = millis();
    }
    
  fill(0, 255 - fadePantalla);
  rect(0, 0, 640, 480);
  fadePantalla += 3;
}
