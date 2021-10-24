class Time{
  int totaltime;
  Time(int temptotaltime)   
  {
    totaltime=temptotaltime;
  }

  boolean isFinished()
  {
    int passedtime=millis()/1000;
    if(passedtime>totaltime)
    {
      return false;    
    }
    else
    {
      return true;
    }
  }
}
