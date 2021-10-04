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
    for (float theta = 0; theta < 360; theta += 1) {
      float rad = radians(theta);
      float vX = raio * cos(movimento * rad) * cos(rad);
      float vY = raio * cos(movimento * rad) * sin(rad);
      stroke(255);
      noFill()  ;
      vertex(vX, vY);
    } 
   endShape(CLOSE);   
   
   movimento += 0.01;
}
