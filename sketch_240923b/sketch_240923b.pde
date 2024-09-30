float circleX = 1;

void setup() {
  size(640, 480);
  background(0);
  circleX = 0;
}

void draw() {
  println(circleX);
  background(0);
  circle(circleX, height * 0.5, 50);
  
  circleX += 5;
  
 //사칙
  //circleX = circleX + 1.01;
  
  //circleX += 1;
  // circleX ++;
  
  //circleX -= 1;
  // circleX --;
  
  // circleX *=5;
  
  // circleX /=5;
}
