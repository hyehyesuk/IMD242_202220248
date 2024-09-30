float sqSize = random(32, 80);
float sqThickness = random(4, 12);


void setup() {
  size(640, 480);
  background(0);
  rectMode(CENTER);
}

void mousePressed() {
  sqSize = random(32, 80);
  sqThickness = random(4, 12);
}

void draw() {
  //background(0);
  fill(255, 255, 0);
  stroke(255, 64, 0);
  strokeWeight(sqThicknes);
  square(width * 0.5, height * 0.5, sqSize);
}
