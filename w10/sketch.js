let capture;

function setup() {
  createCanvas(400, 400);
  capture = createCapture(VIDEO);
  console.log(capture);
}

function draw() {
  background(220);
}
