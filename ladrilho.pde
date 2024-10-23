void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(0);
  for (int j=0; j<5; j++)
    for (int i=0; i<5; i++)
      if ((i+j)%2 == 0) {
        desenhoum (i*100+50, j*100+50, 100);
      } else {
        desenhodois (i*100+50, j*100+50, 100);
      }
}

void desenhoum(int x, int y, int d) {

  fill(203, 98, 35);
  rect(x-d/2, y-d/2, d, d);

  fill(38, 19, 85);
  quad(x, y-d/2, x+d/2, y, x, y+d/2, x-d/2, y);


  fill(33, 91, 85);
  ellipse(x, y, d/1.5, d/1.5);

  fill(355, 86, 75);
  ellipse(x, y, d/2, d/2);

  fill(38, 19, 85);
  quad(x, y-d/4, x+d/4, y, x, y+d/4, x-d/4, y);

  fill(355, 86, 75);
  ellipse(x, y, d/4, d/4);

  fill(33, 91, 85);
  quad(x, y-d/8, x+d/8, y, x, y+d/8, x-d/8, y);

  fill(0, 0, 0);
  ellipse(x, y, d/15, d/7);

  fill(33, 91, 85);
  arc(x-d/2, y-d/2, d/2, d/2, radians(0), radians(90), OPEN);
  arc(x+d/2, y-d/2, d/2, d/2, radians(90), radians(180), OPEN);
  arc(x-d/2, y+d/2, d/2, d/2, radians(270), radians(360), OPEN);
  arc(x+d/2, y+d/2, d/2, d/2, radians(180), radians(270), OPEN);
}

void desenhodois(int x, int y, int d) {
  fill(38, 19, 85);
  rect(x-d/2, y-d/2, d, d);

  fill(203, 98, 35);
  quad(x, y-d/2, x+d/2, y, x, y+d/2, x-d/2, y);

  fill(355, 86, 75);
  ellipse(x, y, d/1.5, d/1.5);

  fill(33, 91, 85);
  ellipse(x, y, d/2, d/2);

  fill(203, 98, 45);
  quad(x, y-d/4, x+d/4, y, x, y+d/4, x-d/4, y);

  fill(33, 91, 85);
  ellipse(x, y, d/4, d/4);

  fill(355, 86, 75);
  quad(x, y-d/8, x+d/8, y, x, y+d/8, x-d/8, y);

  fill(0, 0, 100);
  ellipse(x, y, d/15, d/7);

  fill(355, 86, 75);
  arc(x-d/2, y-d/2, d/2, d/2, radians(0), radians(90), OPEN);
  arc(x+d/2, y-d/2, d/2, d/2, radians(90), radians(180), OPEN);
  arc(x-d/2, y+d/2, d/2, d/2, radians(270), radians(360), OPEN);
  arc(x+d/2, y+d/2, d/2, d/2, radians(180), radians(270), OPEN);
}

//fill(203,98,35); azul
// fill(38,19,85); bege
//fill(33,91,85); laranja
// fill(355,86,75); vermelho
