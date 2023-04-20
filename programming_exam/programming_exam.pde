void setup()
{
  size (500,500);
  colorMode (RGB);
 frameRate(5);
  background(0);
}
 float FlagXPos =random(300);
 float FlagYPos = random(450);
 float FlagW = 200;
 float FlagH = 50;
 float first = random(255);
 float second = random(255);
 float third = random(255);


class Flag
{
  
}

void draw()
{
  
  rect(FlagXPos,FlagYPos,FlagW,FlagH);
 
 
  
  for( float x = FlagYPos; x < FlagYPos+FlagH; x+= FlagH/7)
  {
    fill(random(255), random(255),random(255));
    rect(FlagXPos,x,FlagW,7.1);
  }
  fill(#FFF824);
   triangle(FlagXPos,FlagYPos,FlagXPos,FlagYPos+FlagH+ 7.1,FlagXPos + 50, FlagYPos + 25);
  FlagXPos ++;
  FlagYPos ++;
  
if(FlagXPos > 300 )
  {
    FlagXPos --;
  }
    if(FlagYPos > 450 )
  {
    FlagYPos --;
  }

}
