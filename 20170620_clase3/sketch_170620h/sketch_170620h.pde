float x,y;

void setup(){
  size(400,200); 
  colorMode(HSB);
}
void draw(){
  //background(196);
  float a = radians(frameCount);
  float r = 100;
  x = width/2 +r*cos(a);//frameCount%width;
  y = height/2+r*sin(a);
  ellipse(x,y,10,10);
  ellipse(width-x,y,10,10);
  ellipse(x,height-y,10,10);
  ellipse(width-x,height-y,10,10);
}

