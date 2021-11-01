 class LetterGenerator {
  
  PShape b, d, w;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 120;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'd':
          letters.add(new Letter(d, px, py));
          break;
        case 'w':
          letters.add(new Letter(w, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
    b = createShape();
    b.beginShape();
    b.translate(50, 10);    
    b.vertex(0, 0, 0, 0);
    b.vertex(-11, 313, -11, 313);
    b.vertex(202, 230, 202, 230);
    b.vertex(59, 145, 59, 145);
    b.vertex(204, 24, 204, 24);
    b.beginContour();
    b.vertex(40, 120, 40,120);
    b.vertex(40, 30, 40, 30);
    b.vertex(120, 50, 120, 50);
    b.endContour();
    b.beginContour();
    b.vertex(30, 260, 30, 260);
    b.vertex(30, 180, 30, 180);
    b.vertex(110, 230, 110, 230);
    b.endContour();
    b.endShape(CLOSE);  
    
    d = createShape();
    d.beginShape();
    d.translate(50, 10);
    d.vertex(0.0, 0.0);
    d.vertex(-11.149227, 313.036);
    d.vertex(190.40138, 240.70326);
    d.vertex(190.97429, 24.871357);
    d.beginContour();
    d.vertex(40,50);
    d.vertex(140, 50);
    d.vertex(140, 230);
    d.vertex(30, 230);
    d.endContour();
    d.endShape(CLOSE);   
    
    w = createShape();
    w.beginShape();
    w.translate(50, 10);
    w.vertex(0.0, 0.0);
    w.vertex(66.70114, 190.79626);
    w.vertex(161.32367, 52.740433);
    w.vertex(249.74146, 186.1427);
    w.vertex(293.17474, -6.2047577);
    w.vertex(150.46536, -3.1023865);
    w.endShape(CLOSE);
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    draw();
  }

}

 
