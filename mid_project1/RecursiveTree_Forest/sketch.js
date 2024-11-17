//https://p5js.org/examples/repetition-recursive-tree/
//AI이용
let angle;
let trees = [];
let inc = 0.01;

function setup() {
  createCanvas(windowWidth, windowHeight);
  colorMode(HSB);
  angleMode(DEGREES);
}

function draw() {
  // Starlight - #F0E7C2
  background(48, 18, 93);

  angle = (mouseX / width) * 90;
  angle = min(angle, 90);

  for (let i = trees.length - 1; i >= 0; i--) {
    let tree = trees[i];

    if (tree.y < -100) {
      trees.splice(i, 1);
      continue;
    }

    push();
    translate(tree.x, tree.y);
    drawTree(tree.height, tree.angleOffset);
    pop();
  }

  fill(338, 99, 22);
  rect(0, 0, windowWidth, 52);
  fill(48, 18, 93);
  noStroke();
  textSize(20);
  text(`ArrayList size: ${trees.length}`, 40, 40);

  describe(
    'A tree drawn by recursively drawing branches, with angle determined by the user mouse position. ArrayList size displayed in the top-left corner.'
  );
}

function drawTree(baseHeight, baseAngle) {
  stroke(338, 99, 22); // Wine - #3B0014
  line(0, 0, 0, -baseHeight);

  translate(0, -baseHeight);

  branch(baseHeight, 0);
}

function branch(h, level) {
  if (level == 0) {
    // Root level (first branch) - Leather
    stroke(10, 67, 57); // #954130
  } else if (level == 1) {
    // Level 1 branches - Vintage Gold
    stroke(33, 52, 71); // #B78C56
  } else if (level == 2) {
    // Level 2 branches - Irish Cream
    stroke(55, 16, 56); // #D4C9B4
  } else if (level == 3) {
    // Level 3 branches - Olive
    stroke(80, 29, 45); // #687451
  } else {
    // Level 4+ branches - Charleston Green
    stroke(160, 99, 15); // #00291C
  }

  h *= 0.66;

  if (h > 2) {
    push();
    rotate(angle);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, level + 1);
    pop();

    push();
    rotate(-angle);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h, level + 1);
    pop();
  }
}

// Add a new tree to the ArrayList when dragging the mouse
function mouseDragged() {
  // Calculate initial tree parameters based on mouse position
  let initialHeight = random(80, 150); // Randomize base height of the tree
  let tree = {
    x: mouseX,
    y: mouseY,
    height: initialHeight,
    angleOffset: random(-10, 10), // Random angle offset for variation
  };

  // Add the new tree to the ArrayList
  trees.push(tree);
}
