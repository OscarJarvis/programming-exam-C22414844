void setup()
{
  size (500,500);
  colorMode (RGB);
 frameRate(10);

  
}
 float FlagXPos =random(300);
 float FlagYPos = random(450);
 float FlagW = 200;
 float FlagH = 50;
 float first = random(255);
 float second = random(255);
 float third = random(255);
int xdirection = 3;
int ydirection = 3;
int xgrowth = 3;
int ygrowth = 3;


class Flag
{
  
}

void draw()
{
  strokeWeight(1);
  stroke(0);
    background(0);
  rect(FlagXPos,FlagYPos,FlagW,FlagH);

 
  
  for( float x = FlagYPos; x < FlagYPos+FlagH; x+= FlagH/7)
  {
    fill(random(255), random(255),random(255));
    rect(FlagXPos,x,FlagW,FlagH/7);
  }
  fill(#FFF824);
   triangle(FlagXPos,FlagYPos,FlagXPos,FlagYPos+FlagH+ 7.1,FlagXPos + 50, FlagYPos + (FlagH/2));
  FlagXPos = FlagXPos += xdirection;
  FlagYPos = FlagYPos += ydirection;
  FlagW = FlagW += xgrowth;
  FlagH = FlagH += ygrowth;
  
if(FlagXPos  > 300 )
  {
    xdirection *= -1;
  }
    if(FlagYPos  > 400 )
  {
   ydirection *= -1;
  }
if(FlagXPos < 0)
{
  xdirection *= -1;
}
if(FlagYPos < 0)
{
  ydirection *= -1;
}
if(FlagW > 300)
{
  xgrowth *= -1;
}

if(FlagH > 100)
{
  ygrowth *= -1;
}

if(FlagW < 150)
{
  xgrowth *= -1;
}

if(FlagH < 25)
{
  ygrowth *= -1;
}


strokeWeight(2);
stroke(#7D19E3);
fill(#FFF824);
circle(FlagXPos + (FlagW/ 10),FlagYPos + (FlagH/2), 10);
}
