//coyarzun@error404.cl
void setup(){
  size(400,400);
  background(255);
}
void draw(){
  if(mousePressed){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
void keyPressed(){
  if(key=='s'){
    saveFrame("tmp_####.png");
    println("frame grabado");
  }
  if(keyCode==32){
    background(255);
  }
}
