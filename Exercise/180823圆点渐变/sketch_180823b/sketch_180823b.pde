void setup(){
  size(800,800);
  noStroke();
  
}


void draw(){
  background(0);
  
  for(int i=0;i<20;i++){
    
    for(int j=0;j<20;j++){
      
      pushMatrix();
      
      float x,y,r,a;
      
      x=10+i*20;
      y=10+j*20;
      translate(x,y);
      
      fill(255-y/4,255-x/4,0);
      
      a=(i-j)/20.0;
      r=30*sin(frameCount/60.0+a);
      ellipse(x,y,r,r);
      
      popMatrix();
    }
  }
}
      
