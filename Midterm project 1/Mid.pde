int diameter;
Time timer;
PFont font;
int situation=0;

PImage img4= new PImage(); 

int rectX,rectY;   
int rectSize=90;
color rectColor;
color currentColor;
boolean rectOver=false;


  Player protagonist;

   void setup()
    {
    size(580,800);
    timer=new Time(40);
    font = createFont("Georgia", 32);
    
    img = loadImage("Enemy.png");
    img2=loadImage("Player1.png");
    img3=loadImage("Killer.png");
    img4=loadImage("Background.png");
    img5=loadImage("Doctor.png");


    protagonist = new Player(width/2-100,height-130);

    enemy1_1=new Enemy(3,120,22);  
    enemy1_2=new Enemy(width-200,130,20);
    enemy1_3=new Enemy(width/2-30,240,32);
    enemy1_4=new Enemy(width/2-10,350,25);
    doctor=new Doctor(0,height-330);
    killer=new Killer();

    }

   void drawGameOver1()
    {
     color c=color(255,0,0); 
     fill(c);
     textFont(font,25);
     text("Congratulations,You  win!",width/2-120,height/2);
    }   


    void drawGameOver3()
    {

     color c=color(255,204,0); 
     fill(c);
     textFont(font,25);
     text("Time is up,you failed!",width/2-120,height/2);
    }   


  void draw()
    {
    frameRate(10);
    image(img4,0,0);
    if(situation==0)
    {
    pushStyle();  
    textSize(20);
    text(millis()/1000,10,height-10);
    popStyle();
    }

    protagonist.display();
    protagonist.move();
    enemy1_1.display();
    enemy1_1.movel1();

    enemy1_2.display();
    enemy1_2.movel2();

    enemy1_3.display();
    enemy1_3.movel1();

    enemy1_4.display();
    enemy1_4.movel2();
    doctor.display();
    doctor.movel();


    killer.display();
    killer.move();


    if(enemy1_1.contact()||enemy1_2.contact()
    ||enemy1_3.contact()||enemy1_4.contact()) 

    {
         life=1;   
         speed=0;

       if(disapper)  
       {
         life=0;
         situation=1;
       }

    }

    if(doctor.contact())
    {
         life=2;
         speed=22;

    }

   if(timer.isFinished())
   {
   if(arrive&&life!=1) 
     {           
     situation=1;
     life=3;   
     speed=0; 
     speed1=0;
     doctor_speed=0;
     
     drawGameOver1();
     protagonist.drawbutton(width/2-30,height/2+20);
    }
   }
   else if(!timer.isFinished()&&life!=0)    
   { situation=1;
     life=3;
     speed=0; 
     speed1=0;
     doctor_speed=0;
    
     drawGameOver3();
     protagonist.drawbutton(width/2-30,height/2+20);
   }
 }
