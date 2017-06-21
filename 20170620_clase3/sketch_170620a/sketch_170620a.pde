float x, y;

void setup(){
  size(400,400);
}
void draw(){
  //background(frameCount%256);
  //x = random(width);
  //x = frameCount;
  //x = frameCount*20;
  //x = frameCount%100;
  //x = width-frameCount;
  //x = width-(frameCount%width);
  x  = width/2+ (width/2)*sin(radians(frameCount) );
  y  = frameCount%height;
  ellipse(x, y, 10, 10);
  println(x);
}

