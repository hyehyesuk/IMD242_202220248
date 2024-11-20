let cp;
let canvasW, canvasH;
let scale;
let cpW, cpH;

function setup() {
  canvasW = 640;
  canvasH = 480;
  createCanvas(640, 480);

  scale = 0.1;
  cpW = canvasW * scale;
  cpH = canvasH * scale;
  cp = createCapture(VIDEO);
  cp.size(width * 0.1, height * 0.1);
  cp.hide();
}

function draw() {
  backorund(255, 0, 0);
  cp.loodPixels();
  //for (let idx = 0; idx < cp.Pixels.length; idx++) {
  for (let idx = 0; idx < cp.Pixels.length / 4; idx++) {
    //let colour = cp.Pixels[idx];
    let r = cp.Pixels[4 * idx];
    let g = cp.Pixels[4 * idx + 1];
    let b = cp.Pixels[4 * idx + 2];
    let a = cp.Pixels[4 * idx + 3];
    let br = brightness([r, g, b]);
    let dia = map(br, 0, 255, 0, 20);
    let x = idx * cpW;
    let y = Floor(idx / cpW);
    Fill(255);
    circle(10 * x + 5, 10 * y + 5, dia);
  }
}
