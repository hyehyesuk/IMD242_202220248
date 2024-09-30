void setup() {
  size(600, 360);
}

void draw() {
  background(0);
  rectMode(CENTER);
  
  noStroke();
  fill(#EDBE00);
  rect(0,0,400,800);
  fill(#ED6700);
  rect(400,0,400,800);
  fill(#F74002);
  rect(600,0,400,800);
  
    stroke(0);
  strokeWeight(4);
  fill(0);
    if(mouseX > 400) {
      square(300,180,100);
    } else  if(mouseX > 200) {
      circle(300,180,100);
    } else {
      line(250,130,350,220);
}

}
