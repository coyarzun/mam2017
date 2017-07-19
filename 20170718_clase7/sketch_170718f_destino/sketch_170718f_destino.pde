import ddf.minim.*;

Minim      minim;
AudioInput in;
int        escena;//<--

void setup(){
  size(400, 400, P3D);//3d???
  colorMode(HSB);
  minim = new Minim(this);
  in = minim.getLineIn();
  escena = 0;//escena<--
}
void draw(){
  if     (escena==0) draw0();
  else if(escena==1) draw1();
  else               draw2();
}
void keyPressed(){
  if(key=='1') escena = 0;
  if(key=='2') escena = 1;
  if(key=='3') escena = 2;
}
void draw0(){
  background(255*abs(in.left.get(1)));
  //lights();
  noStroke();
  ambientLight(0, 255, 126);
  directionalLight(128, 255, 255, -1, 0, 0);
  pointLight(196, 255, 255, 100, 100, 100);
  spotLight(64, 255, 255, 80, 20, 40, -1, 0, 0, PI/2, 2);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  rotateX(radians(frameCount));
  scale( 1 + .5*abs(in.left.get(0)) );
  box(100);
}
void draw1(){
  background(255*abs(in.left.get(1)));
  //lights();
  noStroke();
  ambientLight(0, 255, 126);
  directionalLight(128, 255, 255, -1, 0, 0);
  pointLight(196, 255, 255, 100, 100, 100);
  spotLight(64, 255, 255, 80, 20, 40, -1, 0, 0, PI/2, 2);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  rotateX(radians(frameCount));
  
  int total = 360; float dA = TWO_PI/total;
  for(int i=0; i<total; i++){
    pushMatrix();
    rotateY(i*dA);
    translate(100,0);
    scale( 1 + 10*abs(in.left.get(i)) );
    box(6);    
    popMatrix();
  }

}
void draw2(){
  background(255*abs(in.left.get(1)));
  //lights();
  noStroke();
  ambientLight(0, 255, 126);
  directionalLight(128, 255, 255, -1, 0, 0);
  pointLight(196, 255, 255, 100, 100, 100);
  spotLight(64, 255, 255, 80, 20, 40, -1, 0, 0, PI/2, 2);
  translate(width/2, height/2);
  rotateY(radians(frameCount));
  rotateX(radians(frameCount));
  
  int total  = 36; float dA  = TWO_PI/total;
  int total2 = 18; float dA2 = TWO_PI/total2;
  for(int i=0; i<total; i++){
    for(int j=0; j<total2; j++){
      pushMatrix();
      rotateY(i*dA);
      rotateZ(j*dA2);//<--nueva linea
      translate(100,0);
      scale( 1 + 10*abs(in.left.get(i+j*total)) );
      box(6);    
      popMatrix();
    }
  }
}

