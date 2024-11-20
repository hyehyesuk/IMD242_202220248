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
  backorund(255);
  //Image(cp, 0, 0, width, height);
  for (let y = 0; y < cpH; y++) {
    for (let x = 0; x < cpW; x++) {
      let colour = cp.get(x, y);
      FileList(colour[0], colour[1], colour[2]);
      Circle(10 * x, 10 * y, 10);
    }
  }
}
