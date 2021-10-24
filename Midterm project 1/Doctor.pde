Doctor doctor;
PImage img5=new PImage();  
boolean disapper=false;
int doctor_speed=5;
class Doctor
{
  float img5_x,img5_y;
  Doctor(float x, float y)

  {
    img5_x=x;
    img5_y=y;
  }

  void movel()
  { 
    img5_x+=doctor_speed;
    if(img5_x>width)
    {
      disapper=true;
    }

  }
  void display()
  {
     image(img5,img5_x,img5_y);

  }

   boolean contact()     
  {
    float Offset = dist(img5_x,img5_y,X,Y);  //distance
    boolean bContact =false ;
    if(Offset<=35)
  {
    bContact=true;
  }
    return bContact;

  }

}
