float x = random(width);
float y = random(height);
float r = random(255);
float g = random(255);
float b = random(255);
float size = random(255);

void setup() {
  size(1280, 720);
  background(0);
  noStroke();
  colorMode(HSB);
}

void draw() {
   x = random(width);
 y = random(height);
 r = random(127,255);
 g = random(64, 225);
 b = random(194, 255);
 fill(r,g,b);
 circle(x,y,size);
}
