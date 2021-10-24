PImage img=new PImage(); 

float speed;   
Enemy  enemy1_1,enemy1_2,enemy1_3,enemy1_4;  
class Enemy
{
    float img_x,img_y;

    Enemy(float x, float y,float sd)
  {
    img_x=x;
    img_y=y;
    speed=sd;
  }

  void movel1()
  {  img_x+=speed;
    if(img_x>width-80)  
    {
      img_x=40;
    }

  }

  void movel2()
  { img_x-=speed;
    if(img_x<40)
    {
      img_x=width-80;
    }

  }


     boolean contact()     
  {
    float Offset = dist(img_x,img_y,X,Y);  
    boolean bContact =false ;
    if(Offset<=55)   
  {
    bContact=true;
     }
    return bContact;

  }

void display() 
{
     image(img,img_x,img_y); 

      if(life==1)
   {
       color c=color(255,204,0);
       pushStyle();
       fill(c);
       textFont(font,25);
       text("You have to find the doctor!",width/2-140,height/2);  
       popStyle();

   }

  }
}


PImage img3=new PImage();  
Killer killer;
float speed1=0.1;
class Killer
{ 
  float angle=0.0;
  float offset=270;
  float scalar=30;

  float kill_x,kill_y;
  Killer()
  {
  }
  void move()   
  {
    kill_x= offset+cos(angle)*scalar;
    kill_y= (offset+sin(angle)*scalar-180)*1.5;
    angle+=speed1;

  }
  void display()
  {
    image(img3,kill_x,kill_y);
  }
}
