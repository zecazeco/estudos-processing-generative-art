float movimento;

void setup() {
  size(800,800);
  movimento = 0.0;
}

void draw() {
  translate(width/2, height/2);
  background(0);
  bolinhas(300.0);
  
  rec();
}

void bolinhas(float raio) {
  //for loop de 360 graus
  for (int theta = 0; theta < 360; theta += 30) {
    float rad = radians(theta) + sin(movimento);
    float bolaX = raio * cos(rad);
    float bolaY = raio * sin(rad);
    //desenha bolinhas
    ellipseMode(CENTER);
    noStroke();
    fill(255);
    ellipse(bolaX, bolaY, 12, 12);
    //incrementa o movimento
    movimento += 0.005;
  } 
}
