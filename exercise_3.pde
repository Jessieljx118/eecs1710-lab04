int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup() {
size(800,800, P2D);

stroke(255);

frameRate(10);

int radius = min(width, height) / 2;

secondsRadius = radius * 0.72;

minutesRadius = radius * 0.60;

hoursRadius = radius * 0.50;

clockDiameter = radius * 1.8;


cx = width / 2;
cy = height / 2;
}

void draw() {
  
background(0);
fill(0);
noStroke();
ellipse(cx, cy, clockDiameter, clockDiameter);

// subtract HALF_PI to make them start at the top

float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;

float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;


stroke(80,250,80);

strokeWeight(3);

line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);

strokeWeight(5);

line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);

strokeWeight(6);

line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);

strokeWeight(2);

beginShape(POINTS);

for (int a = 0; a < 360; a+=6) {

float angle = radians(a);

float x = cx + cos(angle) * secondsRadius;

float y = cy + sin(angle) * secondsRadius;

stroke(180,a%255,a%255);

fill(180,a%255,a%255);

ellipse(x, y, (((a%30)==0)?10:2), (((a%30)==0)?10:2));

}

endShape();
}
