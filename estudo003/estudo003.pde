float movimento;
float raio;
float theta;

void setup() {
  size(800,800);
  movimento = 0.0;
  raio = 20.0;
  theta = 0;
}

void draw() {
  translate(width/2, height/2);
  background(0);
  float m = sin(movimento) * PI;
  rotate(m);
  beginShape();
    for (float theta = 0; theta < 1080; theta += 10) {
      float rad = radians(theta);
      float bolaX = (raio * rad) * cos(rad);
      float bolaY = (raio * rad) * sin(rad);
      stroke(255);
      noFill()  ;
      vertex(bolaX, bolaY);
    } 
   endShape();   
   movimento += 0.05;
   
   rec();
}
