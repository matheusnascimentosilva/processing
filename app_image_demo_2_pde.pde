//APLICATIVO 2 PARA SIMULAÇÃO
//DESENVOLVIDO PELO IMA
//PROJETO DE EXTENSÃO FEITO NO ANO DE 2022

/*
  Aplicativo que faz uma simulação de um plano cartesiano
  adaptado para a exibição do processing.
*/

//declaração de variáveis
PImage img;
PFont text1,text2,text3;
PFont point,y,x;
float r,g,b;
int cor;

  //configuração do app
void setup(){
  size(700,500);
  img = loadImage("007.jpg"); 
}

void draw(){
  image(img,0,0);
  cor = img.get(mouseX,mouseY);//pegar as coordenadas do mouse e converter na cor
  
  r = red(cor); g = green(cor); b = blue(cor);
  
  //paleta que muda conforme muda os pixels
  fill(cor);
  ellipse(mouseX,mouseY,20,20);
  
  fill(255,255,255);
  rect(mouseX+10,mouseY+25,70,20);
  
  //criando as fontes
  text1 = loadFont("fonte10.vlw");
  textFont(text1);
  fill(0,0,0);//cor vermelha
  text("X = "+mouseX+" Y = "+mouseY,mouseX+10,mouseY+40);
  /*
  text2 = loadFont("fonte10.vlw");
  textFont(text2);
  fill(0,255,0);//cor verde
  text("GREEN:"+g,mouseX+60,mouseY+40);
  
  text3 = loadFont("fonte10.vlw");
  textFont(text3);
  fill(0,0,255);//cor azul
  text("BLUE:"+b,mouseX+125,mouseY+40);
  */
  point = loadFont("fonte10.vlw");
  textFont(point);//coordenada simbólica que aparece
  fill(255,255,255);
  text("(0,0)",10,20);
  
  x = loadFont("fonte10.vlw");
  textFont(x);//eixo X
  fill(255,255,255);
  text("(X)",670,20);
  
  y = loadFont("fonte10.vlw");
  textFont(y);//eixo Y
  fill(255,255,255);
  text("(Y)",10,470);
  
 //retangulos que aparecem para mostrar as coordenadas 
  fill(255,0,0);
  noStroke();
  rect(0,0,700,5);
  rect(0,0,5,500);
}
