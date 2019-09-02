void setup(){
  
  size(1200,1200);
  
  background(255);
  
  frameRate(60);
  
}


void draw(){
  
  fill(0,10);
  rect(0,0,1200,1200);
  
  translate(width/2,height/2);
  
  noStroke();
  
  
  float x,y,r;
  
  r=1;
  
  for(int i=0;i<3600;i++){
    

  
  x=400*cos(i*PI/1800);
  y=400*sin(i*PI/1800+100*noise(i*PI/1000.00+frameCount*PI/100.00));
  
  fill(x/5+170,y/2+50,255-y/5);
  
  ellipse(x,y,r,r);
  
  
  }
}
