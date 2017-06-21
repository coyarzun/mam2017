float x,y;

void setup(){
  size(400,400); 
  colorMode(HSB);
  background(0);
}
void draw(){
  //background(196);
  noStroke();fill(0,8);
  rect(0,0,width,height);
  
  float a = radians(frameCount);
  float r = frameCount%200;//random(100);//100+100*sin(.8*a);
  
  x = width/2  +r*cos(a);//frameCount%width;
  y = height/2 +r*sin(a);
  //stroke(0);
  fill(frameCount%256,255,255);
  ellipse(x,y,10,10);
  ellipse(width-x,y,10,10);
  ellipse(x,height-y,10,10);
  ellipse(width-x,height-y,10,10);
}

