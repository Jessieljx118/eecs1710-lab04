class Bird {
PVector position; 
PShape s; 
Bird() {
position = new PVector(random(width), height/2);
s = loadShape("bird1.svg");

}
void goUp() {
position.y = position.y - 1;
}
void goDown() {
position.y = position.y + 1;
}
void draw() {
shape(s, position.x, position.y);
} 

}
