PImage img2=new PImage();  
 int X;
 int Y;
 int life;
boolean arrive=false;
class Player{
     Player(int XX,int YY)     {
        X=XX;
        Y=YY;
        life=2;
      }

      void move()
      {
         if(mousePressed&&life!=3)
         {
                 X+=(mouseX-X)/2.000;
         Y+=(mouseY-Y)/2.000;  

         }

         if(mousePressed&&mouseButton==RIGHT)
         {
           X=mouseX-10;
           Y=mouseY-5;

         }

         if(life==0)
         {
          X=width/2-20;
          Y=height-70;
          speed=0;
          speed1=0;
          color c=color(255,204,0);
          fill(c);
          textFont(font,25); 
          text("Game Over,you failed!",width/2-120,height/2);
          drawbutton(width/2-30,height/2+20);
       
         }


       if((X>width/2-50)&&(X<width/2+30)&&(Y>120)&&(Y<175))
         {
           arrive=true; 

         }
         else
         {
           arrive=false;
         }
      }



  void drawbutton(int xx,int yy)  
  {
    noFill();
    rect(xx,yy,40,20);
    stroke(204, 102, 0);
    textSize(15);
    text("EXIT",xx+8,yy+14);
    if(mousePressed&&(mouseX>xx)
    &&(mouseX<xx+40)&&(mouseY>yy)&&(mouseY<yy+20))
    {
      exit();
    }

  }
      void display()
      {
        image(img2,X,Y);
      }

      void update()
      { 

      }

      }
