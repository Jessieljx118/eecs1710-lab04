LetterGenerator lg;
String input = "bdwbd";


void setup() {
  size(800, 600, P3D);
  lg = new LetterGenerator(input, 20, height/2);



}
void draw() {
  background(255,100,95);
  
  lg.run(); 
}
