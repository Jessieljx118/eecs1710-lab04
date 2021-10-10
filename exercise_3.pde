int y,mo,d,h,m,s; 
PImage img;
PFont myFont;

void setup(){
size(500,500);
img = loadImage("1.jpg");
}

void draw(){
image(img, 0, 0, 500, 500);
s = second();   // Values from 0 - 59
m = minute();   // Values from 0 - 59
h = hour();     // Values from 0 - 23
d = day();      // Values from 1 - 31
mo = month();   // Values from 1 - 12
y = year();     

myFont=createFont("Arial",18);   
myClockDraw();
}

void myClockDraw(){
translate(width/2,height/2);    
fill(255);  
ellipse(0,0,230,230);
   
stroke(255);      
textFont(myFont);  
fill(0,127);    
text("12",-10,-75);
text("3",78,6);
text("6",-7,88);
text("9",-88,6);
text(y+"-"+mo+"-"+d,-40,-23);  
   
for(int i=1;i<=60;i++){
pushMatrix();
rotate(PI*2.0*i/60.0);  
stroke(0);
if(i%15==0){
strokeWeight(3);
line(0,-90,0,-100);
 }
 else if( i%5 ==0){
strokeWeight(2);
line(0,-92,0,-100);
}
else{       
strokeWeight(1);
line(0,-95,0,-100);
}
popMatrix();
}
pushMatrix();   
   
rotate(PI*2*s/60+PI);   
stroke(0);
strokeWeight(1);    
line(0,0,0,90);    
popMatrix();

pushMatrix();
rotate(PI*2*m/60+PI);
stroke(0);
strokeWeight(3);
line(0,0,0,70);  
popMatrix();

pushMatrix();
rotate(PI*2*h/12+PI);
stroke(0);
strokeWeight(5);
line(0,0,0,50);    
popMatrix();

}
