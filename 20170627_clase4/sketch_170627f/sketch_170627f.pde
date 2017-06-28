void setup(){
  for(int i=0; i<10000; i++){
    point(random(width),random(height));
  }
}
void draw(){
  ellipse(frameCount%width,50,10,10);
}
