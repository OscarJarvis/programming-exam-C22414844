void setup()
{
  size (500,500);
  colorMode (HSB);
}
 float FlagXPos =10;
 float FlagYPos = 10;
 float FlagW = 200;
float FlagH = 50;
float i = FlagYPos;
  



void draw()
{
  
  rect(FlagXPos,FlagYPos,FlagW,FlagH);
  
 
  
  for(float i = FlagYPos; i < FlagH; i += 7.14);
  {
    rect(FlagXPos,i,FlagW,FlagH/7);
  }
  
  
}
