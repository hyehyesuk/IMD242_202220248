let circle = 12;

function setup() {
  createCanvas(800, 600);
}

function draw() {
  background('#333333');
  noStroke();
  fill('cornflowerblue');
  for (let column = 0; column < width; column += 40) {
    for (let row = 0; row < height; row += 40) {
      let x = 20 + column;
      let y = 20 + row;
      let diameter = 30;
      circle(x, y, diameter);
    }
  }
}
