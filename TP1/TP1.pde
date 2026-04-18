PImage miImagen;

void setup(){
  size(800, 400);
  miImagen = loadImage("venusdm.jpg");
}

void draw() {
  background(200);
  image(miImagen, 0, 0, 400, 400);
  //un circulo
  ellipse(600, 200, 50, 70);
  //linea
  line(60, 70, 0, 0);
  
  textSize(30);
  text((400 + mouseX) + " - " + mouseY, mouseX, mouseY); 
}
