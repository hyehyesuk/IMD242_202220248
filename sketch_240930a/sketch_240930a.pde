float x, y;
float speedX, speedY;
float rad = 50;

void setup() {
  size(640, 360);
  noStroke();
  x = width * 0.5;
  y = height * 0.5;
  speedX = random(3, 8);
  if(random(1) < .5) {
    speedX =-1;
  }
  speedY =  random(3, 8); 
  if(random(1) < .5) {
    speedX =-1;
}

void draw() {
  background(0);

  fill(255);
  circle(x, y, rad * 2);

  x += speedX;
  y += speedY;
  
  if( x > width - rad || x < 0) {
    speedX *= -1;
  }
  if( y > height - rad || y < 0) {
    speedY *= -1;
  }
}
