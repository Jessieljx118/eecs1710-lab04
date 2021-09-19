float circleSize = 60;
color bgColor = color(245, 222, 179);

void setup() {
  size(500, 400, P2D); 
  background(bgColor);
}

void draw() {  
  if (mousePressed) {
    fill(135, 206, 235);
     rectMode(CENTER);
    rect(mouseX, mouseY,circleSize, circleSize);
  }else{
     fill(218, 112, 214);
     line(60, 120, pmouseX, pmouseY);
  }
}
