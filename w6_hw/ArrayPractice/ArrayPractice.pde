int[] fruitAmt = new int[5];
String[] fruitNames = {"Mango", "Strawberry", "Kiwi", "Plum", "Blueberry"};
color[] colorArray = new color[]{#D9A407, #EE0E00, #8C6432, #9253A1, #4188FF};

void setup() {
  size(1280, 720);

  for (int idx = 0; idx < fruitAmt.length; idx++) {
    fruitAmt[idx] = int(random(5, 100));
  }
}

float barWidth = 24;
float graphBegin = 400;
float graphGap = 120;

void draw() {
  background(0);
  strokeWeight(barWidth);
  strokeCap(SQUARE); 
  textAlign(CENTER);
  textSize(24);

  float i = 0;
  for (int idx = 0; idx < fruitAmt.length; idx++) {
    fill(colorArray[idx]);
    rectMode(CORNER);
    strokeWeight(2);
    stroke(colorArray[idx]);
    noFill();

    float x = graphBegin + idx * graphGap;
    
    rect(x - 12, height* 0.5, 24, -150);
    strokeWeight(24);
    line(x, height* 0.5, x, height* 0.5 - fruitAmt[idx]);
    text(fruitNames[idx], x, height* 0.5 + 24); 
    text("qty: " + int(fruitAmt[idx]), x, height* 0.5 + 48); 

    i += fruitAmt[idx]; 
  }

  fill(225);
  text("Total Fruit Inventory: " + int(i), width* 0.5, height* 0.5 + 100);
  
  float id = i/fruitAmt.length;
  fill(225);
  text("Average Number of Fruits: " + int(id), width* 0.5, height* 0.5 + 150);


}
