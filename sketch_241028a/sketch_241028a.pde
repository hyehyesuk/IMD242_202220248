Particle[] p;

void setup() {
  size(800,800);
  p = new Particle(100);
  
 
}

void mousepressed() {
    for(int idx = 0; idx < p.length; idx++) {
    //p[idx] = new particle(width * 0.5, height * 0.5, 20, 40, 5, 10);
    
    //for(Particle anyName : p) {
    //  anyName.init(width * 0.5, height * 0.5, 20, 40, 5, 10);
    }
}

void draw() {
  background(255);
  for(int idx = 0; idx < p.length; idx++) {
    p[idx].update();
    
}
