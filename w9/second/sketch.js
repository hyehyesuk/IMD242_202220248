let x = 0;

function setup() {
  fullScreen();
  background(0);
  noStroke();
  fill(102);
}

function draw() {
  rect(x, height * 0.2, 1, height * 0.6);
  x = x + 2;
}
