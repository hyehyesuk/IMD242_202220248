void setup() {
  size(640, 360);
  rectMode(CENTER);
}

void draw() {
  background(0);

  If (mouseX > width/3*2) {
  }else if(mouseX < width/3) {
  }else{
  }
  
   line(width * .5, -50, height* .5, -50, width * .5, +50, height* .5, +50);
   square(width * .5, height* .5, 100);
   circle(width * .5, height* .5, 100);
  }
  
  stroke(127);
  strokeWeight(4);
  line(width /3, 0, width /3, height);
  line(width /3 *2, 0, width /3 *2, height);

}
