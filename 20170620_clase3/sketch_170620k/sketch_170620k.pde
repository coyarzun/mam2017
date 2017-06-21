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
  float s = random(10);
  
  x = width/2  +r*cos(a);//frameCount%width;
  y = height/2 +r*sin(a);
  //stroke(0);
  fill(frameCount%256,255,255);
  ellipse(x,y,s,s);
  ellipse(width-x,y,s,s);
  ellipse(x,height-y,s,s);
  ellipse(width-x,height-y,s,s);
}

