int randomSeed = int(random(10000));
float HOUSE_A_RANGE = 10;

void setup() {
  size(800, 800);
}

void mousePressed() {
  randomSeed = int(random(10000));
}

void draw() {
  randomSeed(randomSeed);
  background(20);
  for (int n = 0; n < 10; n++) {
    house(random(0.1 * width, 0.9 + width), random(height * 0.25, height * 0.75), random(20, 30), random(50, 200));
  }
}

void house(float x, float h, float budD, float petalD) {
  pushStyle();
  colorMode(HSB, 360,200, 400);
  pushMatrix();
  translate(x, height);
  pushMatrix();
  translate(0, -h);
  float petalHue = random(360);
  int petalNum = int(random(5, 13));
  for (int n = 0; n < petalNum; n++) {
    float petalRandDMult = random(1, 1.9);
    float petalA = float(petalNum);
    pushMatrix();
    noStroke();
    fill(petalHue, 80, 100);
    rect(petalA-petalD, petalA, petalD + petalRandDMult, petalD * petalRandDMult);
    popMatrix();
  }
 
  float budHue = random(100, 400);
  fill(budHue, 100, 400);
  rect(-10, 10, -20, budD);
    rect(-100, 10, budD, 40);
    rect(-10, 100, -20, budD);
    rect(-100, 100, budD, 40);
  fill(#6A2E00);
  rect(-90, 250, -60, 40+budD);
  popMatrix();
  popMatrix();
  popStyle();
}
