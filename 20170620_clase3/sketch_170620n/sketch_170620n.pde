//coyarzun@error404.cl
color miColor;
float miGrossor;
float x, y, px, py;

void setup(){
  size(400,400);colorMode(HSB);
  background(255);
  miColor   = color(0);
  miGrossor = 10;
}
void draw(){
  if(mousePressed){
    stroke(miColor);strokeWeight(miGrossor);
    float a = radians(frameCount);
    float r = frameCount%200;//random(100);//100+100*sin(.8*a);
    float s = random(10);
  
    x = width/2  +r*cos(a);//frameCount%width;
    y = height/2 +r*sin(a);
    line(px,py,x,x);
    line(width-px,py,width-x,x);
    px = x;
    py = y;
  }
}
void keyPressed(){
  if(key=='s'){
    saveFrame("render/tmp_####.png");//.tiff, .jpg, .gif;
    println("frame grabado");
  }
  if(keyCode==32){
    background(255);
  }
  if(key=='1')miColor=color(0);
  if(key=='2')miColor=color(0,255,255);
  if(key=='3')miColor=color(168,255,255);
  if(key=='4')miColor=color(200,255,255);
  if(key=='5')miColor=color(255);
  if(keyCode==37){//izq
    miGrossor--;
    if(miGrossor<1)miGrossor=1;
  }
  if(keyCode==39){//der
    miGrossor++;
    if(miGrossor>20)miGrossor=20;
  }
}
