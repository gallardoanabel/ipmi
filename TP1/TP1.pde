PImage miImagen;

void setup(){
  size(800, 400);
  miImagen = loadImage("venusdm.jpeg");
}

void draw() {
  background(255);
  image(miImagen, 0, 0, 400, 400);
  
  noStroke();

  //cuello
  fill(#BFBCAA);
  beginShape();
  vertex(585, 170);
  vertex(608, 120);
  vertex(625, 160);
  vertex(585, 222);
  endShape(CLOSE);
  triangle(585, 170, 550, 195, 585, 222);
  fill(#A6A394);
  triangle(585, 170, 550, 195, 540, 170);
  
  //hombro y costado derecho
  fill(#E5E2CF);
  triangle(625, 160, 585, 222, 690, 185);
  fill(#D9D5C5);
  beginShape();
  vertex(585, 222);
  vertex(690, 185);
  vertex(730, 190);
  vertex(705, 260);
  endShape(CLOSE);
  fill(#595951);
  triangle(730, 190, 705, 260, 740, 260);
  ellipse(733, 227, 30, 72);
  fill(#8C8C81);
  beginShape();
  vertex(740, 260);
  vertex(705, 260);
  vertex(685, 375);
  vertex(725, 365);
  endShape(CLOSE);
  
  //hombro y brazo izquierdo
  fill(#D9D5C5);
  beginShape();
  vertex(550, 195);
  vertex(585, 222);
  vertex(500, 290);
  vertex(474, 242);
  endShape(CLOSE);
  fill(#BFBCAA);
  triangle(474, 242, 500, 290, 455, 350);
  fill(#D9D5C5);
  triangle(500, 290, 455, 350, 515, 350);
  fill(#595951);
  ellipse(485, 350, 60, 20);
  
  //bajo busto
  fill(#D9D5C5);
  triangle(510, 355, 585, 225, 685, 375);
  fill(#A6A394);
  ellipse(552, 325, 90, 79);
  ellipse(650, 328, 92, 72);
  triangle(660, 325, 695, 325, 685, 375);
  
  //pecho
  fill(#E5E2CF);
  triangle(585, 222, 660, 325, 705, 260);
  fill(#BFBCAA);
  triangle(585, 222, 660, 325, 605, 330);
  fill(#D9D5C5);
  triangle(585, 222, 605, 330, 505, 330);
  fill(#E5E2CF);
  triangle(585, 222, 505, 330, 500, 290);
  fill(#BFBCAA);
  triangle(705, 260, 660, 325, 695, 325);
  
  //pelo
  fill(#BFBCAA);
beginShape();
vertex(485, 95);
vertex(505, 125);
vertex(610, 120);
vertex(630, 90);
vertex(615, 30);
vertex(590, 10);
vertex(550, 10);
vertex(515, 15);
vertex(500, 22);
vertex(485, 65);
endShape(CLOSE);

  //

  
  //cara
  fill(#E5E2CF);
  beginShape();
  vertex(515, 135);
  vertex(505, 85);
  vertex(545, 55);
  vertex(580, 170);
  vertex(540, 170);
  endShape(CLOSE);
  fill(#D9D5C5);
  beginShape();
  vertex(545, 55);
  vertex(590, 60);
  vertex(600, 80);
  vertex(610, 120);
  vertex(585, 170);
  vertex(580, 170);
  endShape(CLOSE);

  //lineas faciales
  stroke(#A6A394);
  line(550, 125, 560, 128);
  line(560, 95, 565, 116);
  line(560, 85, 585, 80);
  
  //lineas del pelo
  
  //detalles torso
  stroke(#8C8C81);
  line(505, 330, 515, 329);
  line(655, 320, 665, 325);
  
  //coordenadas
  textSize(30);
  fill(0);
  text((00 + mouseX) + " - " + mouseY, mouseX, mouseY);
}
