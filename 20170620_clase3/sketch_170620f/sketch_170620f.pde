float x,y;

void setup(){
  size(400,200); 
  colorMode(HSB);
}
void draw(){
  //background(196);
  x = frameCount%width;
  y = frameCount%height;
  ellipse(x,y,10,10);
  ellipse(width-x,y,10,10);
  ellipse(x,height-y,10,10);
  ellipse(width-x,height-y,10,10);
}
