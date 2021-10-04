float movimento;
float raio;

void setup() {
  size(800,800);
  movimento = 0.0;
  raio = 200.0;
}

void draw() {
  translate(width/2, height/2);
  background(0);
  beginShape();
  for (int theta = 0; theta < 360; theta += 30) {
    float rad = radians(theta) + sin(movimento);
    float bolaX = raio * cos(rad);
    float bolaY = raio * sin(rad);
    noStroke();
    fill(255);
    vertex(bolaX, bolaY);
  } 
  endShape(CLOSE); 
  movimento += 0.05;
  
  rec();
}
