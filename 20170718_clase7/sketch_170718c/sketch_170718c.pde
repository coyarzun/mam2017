import ddf.minim.*;

Minim      minim;
AudioInput in;

void setup(){
  size(400, 400, P3D);//3d???
  colorMode(HSB);
  minim = new Minim(this);
  in = minim.getLineIn();
}
void draw(){
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

