//APLICATIVO PARA SIMULAÇÃO
//DESENVOLVIDO PELO IMA

//declaração de variáveis
PImage img;
PFont text1,text2,text3;
float r,g,b;
int cor;

  //configuração do app
void setup(){
  size(400,400);
  img = loadImage("007.jpg"); 
}

void draw(){
  image(img,0,0);
  cor = img.get(mouseX,mouseY);//pegar as coordenadas do mouse e converter na cor
  
  r = red(cor); g = green(cor); b = blue(cor);
  
  //paleta que muda conforme muda os pixels
  fill(cor);
  ellipse(mouseX,mouseY,30,30);
  
  //criando as fontes
  text1 = loadFont("fonte10.vlw");
  textFont(text1);
  fill(255,0,0);//cor vermelha
  text("RED:"+r,mouseX+10,mouseY+40);
  
  text2 = loadFont("fonte10.vlw");
  textFont(text2);
  fill(0,255,0);//cor verde
  text("GREEN:"+g,mouseX+60,mouseY+40);
  
  text3 = loadFont("fonte10.vlw");
  textFont(text3);
  fill(0,0,255);//cor azul
  text("BLUE:"+b,mouseX+125,mouseY+40);
  
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
