float maxThreshold = 0.01;
float minThreshold = 0.001;
Bird a;
void setup() {
size(800, 600, P3D); 
setupSound();
a = new Bird(); 
}
void draw() {
updateSound();
float amp = getAmp();

if (amp > maxThreshold) {
background(0,255,0);
a.goUp();
} else if (amp < minThreshold) {
background(255,0,0);
a.goDown();
}
a.draw();
}
