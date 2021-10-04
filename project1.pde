PImage f1, f2;
int marktime = 0;
PImage curface;
void setup() {
 size(800, 600, P2D);
 imageMode(CENTER);
 f1 = loadImage("piggyrabbit1.jpg");
 f2 = loadImage("piggyrabbit2.jpg");
}
void draw() {
 marktime = millis()%1000;
 if (marktime < 500){
 curface = f1;
 }else if (marktime < 1000){
 curface = f2;
}
 image(curface, width/2, height/2);
}
