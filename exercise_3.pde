String hour;
String minute;
String second;

void setup()
{
  size(600, 600);
  background(0,127,200);
  stroke(255);
  strokeWeight(3); 
  textAlign(CENTER);
  textSize(60);
  
}

void draw()
{
  background(0,127,200);
  float s = second(); // Values from 0 - 59
  float m = minute(); // Values from 0 - 59
  float h = hour(); // Values from 0 - 23
  
  rect(0,0,s,s);
  rect(0,100,m,m);
  rect(0,200,h*3.5,h*3.5);

  s =s/60*width; // Values from 0 - 59
  m = m/60*width; // Values from 0 - 59
  h = h/24*width; // Values from 0 - 23

print("sec " + s + " min " + m + " hour " + h +" \n");
  ellipse(width/2, height/2, s/4,s/4);
  fill(255,127);
  
  ellipse(width/2, height/2, m/2.5,m/2.5);
  fill(255,85);
  
  ellipse(width/2, height/2, h/2,h/2);
  fill(255,50);

hour   = transform(hour());
minute = transform(minute());
second = transform(second());

text(hour + ":" + minute + ":" + second, width/2, height/6); 

}

String transform(int number)
{
  String value = "";
  
  if(number < 10)
  {
    value = "0" + number;
  }
  else
  {
    value = str(number);
  }
  
  return value;
}

