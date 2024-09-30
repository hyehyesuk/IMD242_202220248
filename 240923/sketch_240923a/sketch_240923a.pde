float circleX;

void setup() {
  size(640, 480);
  background(0);
  circleX = 320;
}

void mousePressed() {
   background(0);
}

void draw() {
  //background(0); //잔상이 안남음
  circle(circleX, mouseY, 50); //mouseX, mouseY
}

//선언
//변수종류(int - 수 정수,float - 수 소수), 변수이름(맘대로);
//초기화
//변이름 = 값(종류)
