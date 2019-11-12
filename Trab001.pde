float parabX, parabY;
float a;

int cont=0;

void desenharParabola(){
  int diam = 20;
  parabX++;
  parabY= 0.05*pow(parabX,2);
  
  fill(0,0,random(255)); // cores aleatorias, porem as mesmas em cada parabola

  for (int i=0; i<20; i++){
  //fill(0,0,random(255)); // cores aleatorias em cada parabola, entre preto e azul
  ellipse(parabX*i, parabY, diam, diam);
  ellipse(-parabX*i, parabY, diam, diam);
  }
  if(cont==200) { 
    parabX= 0; 
    parabY= 0; 
    cont=0; 
    background(0); // limpa tela
  } 
  cont++;
}

void desenharTrigonometrica(){
  translate(width/2, height/2);
  float Raio = 100;
  float RaioV = Raio; 
  while ( RaioV>0) {
    float angulo = 0;
    while ( angulo<2*PI ) {
      float trigX = RaioV * tan(angulo);
      float trigY = RaioV * sin(angulo);
      fill(random(255),0,0);
      ellipse(trigX, trigY-150, 15, 15);
      angulo += 2*PI/100; // tamanho das asas da "borboleta"
    }  
    RaioV  = RaioV - 15;
  }   
}

void desenharMagia(){
  int s = millis();
  for(int f = 0; f<120; f++) {
  fill(255);
  ellipse(width * cos(s-f*2), height * sin(s-f*2000), 2, 2);
  }
}

void setup() 
{
  size(1000, 600, P3D);
  background(0);
  noStroke();
  frameRate(60);
}

void draw() 
{
//  Descomentar para a magica acontecer =)
  //rotateY(a);
  //a += 0.05;
  desenharMagia();
  desenharTrigonometrica();
  desenharParabola();
}
