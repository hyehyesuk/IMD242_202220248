float tileSize;

void setup() {
  size(640, 480);
  
  tileSize = 20;
  specing = 20;
  
  rectMode(CENTER);
}

void draw() {
  background(0);
  for(int row =0; row < height; row += specing) {
    
  for(int colum = 0; colum < width; colum += specing) {
    int x = colum;
    int y = row;
    nofill();
    stroke(255);
    square(x + specing * .5, y + specing * 0.5, specing);
    stroke(255,0,0);
    square(x+specing * .5, y+ specing * 0.5, tileSize);
    if(random(1) < 0.5);
    line(x + specing * .5,  - tileSize+0.5
         y + specing * 0.5,  - tileSize+0.5);
  }
}
}
 noLoop();
}
