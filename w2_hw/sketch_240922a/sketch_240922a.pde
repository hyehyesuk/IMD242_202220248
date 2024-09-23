int x=0, y=0, oldx, oldy; 

void setup() {
  size(500, 500); 
  fill(#FFCD00);
}

void draw() {  
  oldx = x;        
  oldy = y;         
  x = mouseX;   
  y = mouseY;
  background(255);
  ellipse(250,250,200,200);
ellipse(250,260,10,10);
arc(250,280,80,80,0,PI,PIE);
if(mousePressed==true) {
  strokeWeight(8);
  stroke(20);
  line(275,240,320,240);
  line(180,240,225,240);
  }else{
  ellipse(200,240,40,40);
  ellipse(300,240,40,40);
 }

  if(x < 25) 
    x = 25;
  else if(x > 500-25)
    x = 500-25;
  if(y < 25) 
    y = 25;
  else if(y > 500-25)
    y = 500-25;   

  if(oldx != x || oldy != y) {    
    background(#FF5A08);       
    ellipse(x, y, 50, 50); 
  }   
}
