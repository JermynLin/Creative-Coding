void setup(){
  size(400,400);

  
}

void draw()
{
  background(255);
  float x,y;
  x=noise(frameCount/100.0)*400;
  y=noise(frameCount/100.0+100)*400;
  
  noStroke();
  fill(200,0,0);
  rect(x,y-20,60,30);
  fill(255);
  text("    ¥100", x, y);

}
