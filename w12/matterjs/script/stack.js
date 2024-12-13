const Engine = Matter.Engine,
  Composites = Matter.Composites,
  MouseConstraint = Matter.MouseConstraint,
  Mouse = Matter.Mouse,
  Composite = Matter.Composite,
  Bodies = Matter.Bodies;

// create engine
const engine = Engine.create(),
  world = engine.world;

// add bodies
var stack = Composites.stack(
  200,
  606 - 25.25 - 5 * 40,
  10,
  5,
  0,
  0,
  function (x, y) {
    return Bodies.rectangle(x, y, 40, 40);
  }
);

Composite.add(world, [stack]);

let walls = [
    Bodies.rectangle(400, 0, 800, 50, { isStatic: true }),
    Bodies.rectangle(800, 300, 50, 600, { isStatic: true }),
    Bodies.rectangle(0, 300, 50, 600, { isStatic: true }),
    Bodies.rectangle(400, 606, 800, 50.5, { isStatic: true }),
  ];

Composite.add(world, walls),

Composite.add(world, mouseConstraint);


function setup() {
  createCanvas(800,600);
  console
}

function draw() {
  background(255);
  
stack.bodies.forEach((aBody)=>{
  aBody.verices.forEach()=>{
    vertex(aVertex, x, aVertex.y);
  });
  endShape
})

  walls.forEach((eachWalls)=>{
    beginShape();
    eachWall.verices.forEach((eachVertex)=>{
      vertex
    })
  });
}
