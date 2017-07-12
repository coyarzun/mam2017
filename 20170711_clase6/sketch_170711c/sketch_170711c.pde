Particula[] p;

void setup(){
  size(400,400);
  p = new Particula[500];
  for(int i=0; i<p.length; i++){
    p[i] = new Particula();
  }
}
void draw(){
  background(255);
  for(int i=0; i<p.length; i++){
    p[i].actualizar();
    p[i].dibujar();
  }
}



