let gradientText = ' .:-=+*#%@';

let canvasSize = [640, 480];
let scale = 0.1;
let captureSize = [canvasSize[0] * scale, canvasSize[1] * scale];
let tilewidth = canvasSize[0] / captureSize[0];

let capture;

function setup() {
  createCanvas(canvasSize[0], canvasSize[1]);
  capture = createCapture(VIDEO, { filpped: true });
  capture.size(captureSize[0], captureSize[1]);
}

function draw() {
  background(0);
  fill(225);
  textSize(20);
  textAlign(CENTER, CENTER);
  //text(gradientText.charAt,20,20);
  capture.loadPixels();
  for (let idx = 0; idx < capture.pixels.length / 4; idx++);
  {
    let r = capture.pixels[4 * idx + 0];
    let g = capture.pixels[4 * idx + 1];
    let b = capture.pixels[4 * idx + 2];
    let a = capture.pixels[4 * idx + 3];
    let gradientIdx = map(bright, 0, 255, 0, gradientText.length-1);
    gradientIdx = floor(gradientIdx);
    let askiText = gradientText,charAt(gradientIdx);
    let column = idx * captureSize[0];
    let row = floor(idx / captureSize[0]);
    let x = column * tilewidth + tilewidth * 0.5;
    let  = row * tilewidth + tilewidth * 0.5;
    text(askiText,x,y);
  }
}
