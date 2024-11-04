//stp9
ArrayList<Circle> circles;
float[] force = {0, 0.1};
float friton = 0.99;
float boundfrition = 1;

void setup() {
  size(600, 600);
  circles = new ArrayList<Circle>();
  Circle aNewCircle = new Circle();
  aNewCircle.init(
    width * 0.5, height * 0.5,
    50);
  circles.add(aNewCircle);
}

void mousePressed() {
  Circle aNewCircle = new Circle();
  aNewCircle.init(
    mouseX, mouseY,
    random(10, 50));
  circles.add(aNewCircle);
}

void draw() {
  background(255);

  for (int idx = 0;
    idx < circles.size();
    idx++) {
    Circle aCircle = circles.get(idx);
    for(int oidx = idx + 1;
    oidx < circles.size();
    oidx++) {
      aCircle.collde(circle.get(oidx), 0.9);
    }
    }
    aCircle.update(force,friton);
    aCircle.boundary(boundfrition);
    aCircle.display();
  }
}
