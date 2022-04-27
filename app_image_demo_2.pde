//APLICATIVO PARA SIMULAÇÃO
//DESENVOLVIDO PELO IMA

//declaração de variáveis
PImage img;
PFont text1,text2;
float r,g,b;
int cor;
int eixo;

  //configuração do app
void setup(){
  size(400,400);
  img = loadImage("007.jpg"); 
}

void draw(){
  image(img,0,0);
  cor = img.get(mouseX,mouseY);//pegar as coordenadas do mouse e converter na cor
  eixo = img.get(mouseX,mouseY);
  
  r = red(cor); g = green(cor); b = blue(cor);
  
  //paleta que muda conforme muda os pixels
  fill(cor);
  ellipse(mouseX,mouseY,30,30);
  
  //criando as fontes
  text1 = loadFont("fonte15.vlw");
  textFont(text1);
  fill(255,255,255);//cor vermelha
  text(eixo,mouseX,30);
  
  text2 = loadFont("fonte15.vlw");
  textFont(text2);
  fill(255,255,255);//cor vermelha
  text(eixo,10,mouseY);
  
    /*fill(255, 0, 0);
    rect(mouseX, mouseY + 60, r, 20); 
    fill(0, 255, 0);
    rect(mouseX, mouseY + 80, g, 20);
    fill(0, 0, 255);
    rect(mouseX, mouseY + 100, b, 20);
    */
  
  //updatePixels();
  //teste de cor no cmd
  //println("Cor:","|RED=",r,"|","|GREEN=",g,"|","|BLUE=",b,"|");
}
