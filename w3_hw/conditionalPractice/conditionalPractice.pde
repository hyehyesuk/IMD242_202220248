void setup() {
  size(600, 360);
}

void draw() {
  background(0);
  stroke(225);
  fill(175);
  rectMode(CENTER);
  
    if(mouseY > 270) {
      square(300,315,40);
    } else  if(mouseY > 180) {
      rect(300,225,160,40);
    } else  if(mouseY > 90) {
      circle(300,135,50);
    } else {
      line(250,20,350,70);
}

  stroke(127);
  strokeWeight(4);
  line(0,90,600,90);
  line(0,180,600,180);
  line(0,270,600,270);
}
