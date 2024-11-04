int[] colour = {
 0x3B1E54,
 0x9B7EBD,
 0xD4BEE4,
 0xEEEEEE
};

float[] ballX, ballY;
float[] ballVx, ballVy;
float[] ballRad;
int[] ballColour;
int ballNum = 5000;

float[] ball = {x, y, vx, vy, rad}

void setup() {
  size(600,400);
  ballX = new float[ballNum];
  ballY = new float[ballNum];
  ballVx = new float[ballNum];
  ballVy = new float[ballNum];
  ballRad = new float[ballNum];
  ballColour = new int[ballNum];
  
  for (int idx = 0; idx < ballNum; idx++) {
  }
  
  ballX = width * 0.5;
  ballY = height * 0.5;
  float randomDeg = random(360);
  float speed = 5;
  ballVx = speed *cos(radians(randomDeg));
  ballVy = speed *sin(radians(randomDeg));
  ballRad[idx] = random(5,20);
  ballColour[idx] = 
  ballRad = 20;
}

void draw() {
  for (int idx = 0; idx < ballNum; idx++) {
    ballVx[idx];
  ballX += balVx;
  ballY += balVy;
  if(ballX[idx] < 0 + ballrad[idx] {
  || ballY[idx] > width -rad){
    ballVx += -1;
  }
  if(ballY[idx] < 0 +ballrad[idx] {
  || ballY[idx] > width -rad){
    ballVy += -1;
  }
  
  
  background(255);
  noStroke();
  for (int idx = 0; idx < ballNum; idx++) {
  fill(255,0,0);
  circle(ballX, ballY, 2*ballRad);
}
