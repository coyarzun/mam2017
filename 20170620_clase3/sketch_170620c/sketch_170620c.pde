float x, y;

void setup(){
  size(400,400);colorMode(HSB);
}
void draw(){
  //background(frameCount%256);
  x  = width/2+ (width/2)*sin(radians(.8*frameCount) );
  y  = frameCount%height;
  ellipse(x, y, 10, 10);
  println(x);
}

