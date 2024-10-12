//마우스 위치따라 최소 3에서 16타일로 채운다
float centerX, centerY;
int tileNum;
int randomSeed = 0;
float noiseMult = 0.1;

void setup() {
  size(800,800);
  centerX = width * 0.5;
  centerY = height * 0.5;
  noiseMult = min(width, height);
  noiseMult *= 0.5;
  noiseMult *= 3 / 4.0;
  noFill();
}

void draw() {
  noiseSeed(randomSeed);
  randomSeed(randomSeed);
  background(0);
  tileNum = int(map(mouseX, 0, width, 3, 16 + 1));
  noiseMult = pow(10, map(mouseY, 0, height, -1, -4));
  float tileSize = width / float(tileNum);
  for(int row = 0; row < tileNum; row++) {
    for(int col = 0; col < tileNum; col++) {
    float rectX = tileSize * col;
    float rectY = tileSize * row;
    float centerX = rectX + tileSize * 0.5;
    float centerY = rectY + tileSize * 0.5;
    //mouseY = noiseSeed(1);
    float randomVal = random(1);
    float noiseVal = noise(centerX, centerY);
    fill(0);
    rect(rectX, rectY, tileSize, tileSize);
    fill(0 + randomVal);
    fill(0 * noiseVal);
    noFill();
    stroke(255);
    circle(centerX, centerY, tileSize * 0.8);
    pushMatrix();
    translate(centerX, centerY);
    //rotate(radians(360 * noiseVal));
    rotate(atan2(mouseY - height * 0.5, mouseX - width * 0.5));
    beginShape();
    for (int n = 0; n < tileNum; n++) {
      float angle = -90 + 360 / tileNum * n;
      float x = noiseMult * cos(radians(angle));
      float y = noiseMult * sin(radians(angle));
      vertex(x, y);
  }
    line(0, 0, tileSize * 0.8 * 0.5, -noiseMult);
    endShape(CLOSE);
    popMatrix();
    }
  }
}
