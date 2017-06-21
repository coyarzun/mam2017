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
}

