//APLICATIVO 4.0 PARA SIMULAÇÃO
//DESENVOLVIDO PELO IMA
//PROJETO DE EXTENSÃO FEITO NO ANO DE 2022
//ÚLTIMA ALTERAÇÃO FEITA NO DIA: 19/04/2022
//VERSÃO FULLSCREEN
//PARA SAIR DO PROGRAMA BASTA APERTAR A TECLA X

/*
  Aplicativo que faz uma simulação de um plano cartesiano
  adaptado para a exibição do processing.
  Mudanças no código e atulizações das imagens
  Mudança na fonte para arial black 12
  Aplicativo registra as coordenadas e a cor em um arquivo de texto.
  Aplicativo mostra a taxa de FPS.
*/

//declaração de variáveis
PImage img;
PFont text1;
PFont point,y,x;
float r,g,b;
int cor;
import controlP5.*;
ControlP5 cp5;
PrintWriter output;

  //configuração do app
void setup(){
  
  fullScreen();
  surface.setTitle("Programa 4.0");
  fill(255);
  noStroke();
  background(0);
  frameRate(60);
  //CONTROLE DO FPS DA TELA
  cp5 = new ControlP5(this);
  cp5.addFrameRate().setInterval(10).setPosition(0,height-10);
  
  //criando o arquivo de texto
  output = createWriter("data.txt");
  
  img = loadImage("001.jpg");
  img.resize(displayWidth,0);
}

void draw(){
  
  image(img,0,0,displayWidth,displayHeight);
  cor = img.get(mouseX,mouseY);//pegar as coordenadas do mouse e converter na cor
  
  //retangulos que aparecem para mostrar as coordenadas 
  fill(255,0,0);
  noStroke();
  rect(0,0,displayWidth,5);
  rect(0,0,5,displayHeight);
  
  r = red(cor); g = green(cor); b = blue(cor);
  
  //paleta que muda conforme muda os pixels
  fill(cor);
  strokeWeight(1);
  stroke(255);//contorno
  ellipse(mouseX,mouseY,20,20);
    
    //retangulo de fundo para as informações da tela.
    fill(0);
    rect(width/3,20,displayWidth/3,30);
    
   //informações das coordenadas na tela
   int center = width/2;
  
  //criando as fontes
  text1 = loadFont("arial12.vlw");
  textFont(text1);
  fill(255);
  textAlign(CENTER,CENTER);
  text("f(x = "+mouseX+" , y = "+mouseY+") = "+r,center,40);
  textSize(20);

  point = loadFont("arial12.vlw");
  textFont(point);//coordenada simbólica que aparece
  fill(255);
  textAlign(RIGHT+5);
  text("(0,0)",10,20);
  
  x = loadFont("arial12.vlw");
  textFont(x);//eixo X
  fill(255,0,0);
  text("(X)",1290,20);
  
  y = loadFont("arial12.vlw");
  textFont(y);//eixo Y
  fill(255,0,0);
  text("(Y)",20,726);
  
  //BARRAS DE COR
  fill(r,0,0);
  rect(100,650,10+r,10);
  fill(255);
  text("R:",80,650);
  fill(0,g,0);
  rect(100,680,10+g,10);
  fill(255);
  text("G:",80,680);
  fill(0,0,b);
  rect(100,710,10+b,10);
  fill(255);
  text("B:",80,710);
  //FIM DE BARRAS DE CORES
  
  //FINALIZAR O PROGRAMA
  ExitProgram();
  
}

void mousePressed(){
  output.println("---------------------");
  output.println("|Coordenada X="+mouseX);
  output.println("|Coordenada Y="+mouseY);
  output.println("|Cor = "+r);
  output.println("---------------------");
  stroke(255,0,0);
  strokeWeight(4);
  line(mouseX,mouseY,0,mouseY);
  line(mouseX,mouseY,mouseX,0);
 
}
//função que fecha o arquivo e encerra o programa
void ExitProgram(){
  if(keyPressed){
    if(key == 'X' || key == 'x'){
         output.flush();
         output.close();
         exit();
    }
  }
}
