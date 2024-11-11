let capture;

function setup() {
  createCanvas(400, 400);
  capture = createCapture(VIDEO);
  console.log(capture);
  capture.size(10, 10);
}

function draw() {
  background(220);
  image(capture, 0, 0);
}
