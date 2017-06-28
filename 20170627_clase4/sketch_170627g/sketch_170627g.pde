void setup(){

}
void draw(){
  background(0);
  for(int i=0; i<1000; i++){
    stroke(255);
    point(random(width),random(height));
  }
  ellipse(frameCount%width,50,10,10);
}
