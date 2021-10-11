void setup(){
  size(600,400,P2D);
}
void draw(){
  colorMode(HSB,180,360,100);
  background(0,200,100);
  float w = 120;
  float l = w/3*5;
  DaBai db = new DaBai(w,l);
  db.leftArm.a=atan2(mouseY,mouseX);
  db.rightArm.a=PI-atan2(mouseY,width-mouseX);
  
  if((mouseX-pmouseX)>5){
    db.leftLeg.a=PI/4;db.rightLeg.a=PI/4;
  }else if((mouseX-pmouseX)<-5){
    db.leftLeg.a=-PI/4;db.rightLeg.a=-PI/4;
  }else{
    db.leftLeg.a=0;db.rightLeg.a=0;
  }

  stroke(30,75,75);strokeWeight(2);
  line(0,0,mouseX-db.body.w-db.leftArm.l*cos(db.leftArm.a),mouseY-db.body.l/2-db.leftArm.l*sin(db.leftArm.a));
  line(width,0,mouseX+db.body.w-db.rightArm.l*cos(db.rightArm.a),mouseY-db.body.l/2-db.rightArm.l*sin(db.rightArm.a));

  pushMatrix();
  translate(mouseX,mouseY);
  db.display();
  popMatrix();
}

class DaBai{
  float w,l;
  Head head;
  Body body;
  Arm leftArm;
  Arm rightArm;
  Leg leftLeg;
  Leg rightLeg;
  
  DaBai(float w,float l){
    this.w=w;this.l=l;
    head = new Head(l/4);
    body = new Body(l/4);
    leftArm = new Arm(l/5,0);
    rightArm = new Arm(l/5,0);
    leftLeg = new Leg(l/4,0);
    rightLeg = new Leg(l/4,0);
  }
  void display(){
    ellipseMode(RADIUS);
    // left arm
    pushMatrix();
    translate(-body.w,-body.l/4);
    rotate(leftArm.a);
    leftArm.display();
    popMatrix();
    // right arm
    pushMatrix();
    translate(body.w,-body.l/4);
    rotate(rightArm.a);
    rightArm.display();
    popMatrix();
    // left leg
    pushMatrix();
    translate(-body.w/3,body.l/1.2);
    rotate(leftLeg.a);
    leftLeg.display();
    popMatrix();
    // right leg
    pushMatrix();
    translate(body.w/3,body.l/1.2);
    rotate(rightLeg.a);
    rightLeg.display();
    popMatrix();
    // body
    body.display();
    // head
    pushMatrix();
    translate(0,-body.l);
    head.display();
    popMatrix();
  } 
}
class Head{
  float w,l;
  Head(float w){
    this.w=w;l=w*0.9;
  }
  void display(){
    ellipseMode(RADIUS);
    fill(0,0,100);stroke(0,0,0);strokeWeight(2);
    ellipse(0,0,w,l); //face
    fill(0,0,0);stroke(0,0,0);
    ellipse(-w/5*2,-l/10,l/10,l/10); //left eye
    ellipse(w/5*2,-l/10,l/10,l/10); //right eye
    
    fill(20,80,80);stroke(20,80,80);strokeWeight(2);
    ellipse(-w/5*3,l/5,l/10,l/15); //left face blush
    ellipse(w/5*3,l/5,l/10,l/15); //right face blush
  } 
}
class Body{
  float w,l;
  Body(float l){
    this.l=l;w=l*1/1.2;
  }
  void display(){
    ellipseMode(RADIUS);
    fill(0,0,100);stroke(0,0,0);strokeWeight(2);
    ellipse(0,0,w,l);
    fill(30,10,100);stroke(0,10,60);strokeWeight(1);
    
    ellipse(w/5*2,-l/5*2,w/8,w/8);
    beginShape();
    vertex(w/5*2-w/8,-l/5*2);
    vertex(w/5*2-w/16,-l/5*2);
    vertex(w/5*2-w/16,-l/5*2-w/16);
    vertex(w/5*2+w/16,-l/5*2-w/16);
    vertex(w/5*2+w/16,-l/5*2);
    vertex(w/5*2+w/8,-l/5*2);
    endShape();
  }
}
class Arm{
  float w,l;
  float a;
  Arm(float w,float a){
    this.w=w;l=w*1/3;this.a=a;
  }
  void display(){
    ellipseMode(RADIUS);
    fill(0,0,100);stroke(0,0,0);strokeWeight(2);
    ellipse(0,0,w,l);
  } 
}
class Leg{
  float w,l;
  float a;
  Leg(float l,float a){
    this.l=l;w=l*1/2;this.a=a;
  }
  void display(){
    ellipseMode(RADIUS);
    fill(0,0,100);stroke(0,0,0);strokeWeight(2);
    ellipse(0,0,w,l);
  } 
}
