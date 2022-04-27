//APLICATIVO 3 PARA SIMULAÇÃO
//DESENVOLVIDO PELO IMA
//PROJETO DE EXTENSÃO FEITO NO ANO DE 2022

/*
  Aplicativo que faz uma simulação de um plano cartesiano
  adaptado para a exibição do processing.
  Mudanças no código e atulizações das imagens
  Mudança na fonte para arial black 12
*/

//declaração de variáveis
PImage img;
PFont text1;
PFont point,y,x;
float r,g,b;
int cor;

  //configuração do app
void setup(){
  surface.setTitle("Programa 3.1");
  frameRate(60);
  size(800,600);
  img = loadImage("007.jpg");
  img.resize(700,0);//essa instrução redimensiona as imagens para o padrão da janela.
  //fullScreen();
  /*
    Futuras versões irão vim com opção de escolha de imagem!
  */
  selectInput("Selecione uma imagem:", "fileSelected");
}


void draw(){
  
  //println(frameCount);
  //fundo branco que serve de moldura para a aplicação
  fill(255);
  rect(0,0,800,600);
  noStroke();
  
  //desenhando a imaem em cima do retangulo branco
  image(img,50,50,700,500);
  cor = img.get(pmouseX,pmouseY);//pegar as coordenadas do mouse e converter na cor
  
  //retangulos que aparecem para mostrar as coordenadas 
  fill(255,0,0);
  noStroke();
  rect(50,50,700,5);
  rect(50,50,5,500);
  
  r = red(cor); g = green(cor); b = blue(cor);
  
  //paleta que muda conforme muda os pixels
  fill(cor);
  stroke(255);//contorno
  ellipse(mouseX,mouseY,20,20);
  
  //LINHAS QUE SEVRVM COMO GUIA PARA MOSTRAR O CAMINHO DAS COORDENADAS
  stroke(255,0,0);
  line(mouseX,mouseY,50,50);
  line(mouseX,mouseY,750,550);
  
  /*INICIO DO BLOCO
    Bloco de instrução que restringe o acesso as coordenadas da imagem.
    Verifica a altura e largura nas extremidades.
    Se passar do tamanho permitido, o valor do mouse é atualizado para dentro da área permitida.
  */
  if(mouseX == 700 && mouseY >= 500  ){
    mouseX = 750;
    mouseY = 550;
  }else if(mouseX <= 50 && mouseY <= 50){
    mouseX = 50;
    mouseY = 50;
  }else if(mouseX <= 50 && mouseY >= 500){
    mouseX = 50;
    mouseY = 550;
  }else if(mouseX ==700 && mouseY <=50){
    mouseX = 750;
    mouseY = 50;
  }else if(mouseY <=50){
    mouseY = 50;
  }else if(mouseX <=50){
    mouseX = 50;
  }else if(mouseX >=700){
    mouseX = 750;
  }else if(mouseY >=500){
    mouseY = 550;
  }
    
  //FIM DO BLOCO
  
  //rect(mouseX+10,mouseY+25,70,20);
  //moveX = mouseX;
  //moveY = mouseY;
  
  // retangulo que mostra as coordenadas X e Y
    fill(0);
    rect(180,10,400,30);
    fill(255);
    
    //condição que configura para mostrar a origem 
    if(mouseX == 50 && mouseY == 50){
      text("COORDENADAS ===>",260,30);
      text("X = ("+0+") | Y = ("+0+")",400,30);
    }else{
    text("COORDENADAS ===>",260,30);
    text("X = ("+mouseX+") | Y = ("+mouseY+")",400,30);
    }
  
  //criando as fontes
  text1 = loadFont("arial12.vlw");
  textFont(text1);
  fill(0,0,0);
 // text("X = "+mouseX+" Y = "+mouseY,mouseX+10,mouseY+40);
 

  point = loadFont("arial12.vlw");
  textFont(point);//coordenada simbólica que aparece
  fill(255);
  text("(0,0)",60,70);
  
  x = loadFont("arial12.vlw");
  textFont(x);//eixo X
  fill(255,0,0);
  text("(X)",670,40);
  
  y = loadFont("arial12.vlw");
  textFont(y);//eixo Y
  fill(255,0,0);
  text("(Y)",30,470);
}

void fileSelected(File selection) {
  if (selection == null) {
    rect(400,250,180,10);
    text("Nada foi escolhido.",400,250);
    println("Nada foi escolhido.");
  } else {
    println("Selecione uma Imagem para teste! " + selection.getAbsolutePath());
  }
}
