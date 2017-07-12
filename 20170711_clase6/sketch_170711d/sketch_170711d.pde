ArrayList<Particula> p;

void setup(){
  size(400,400);
  p = new ArrayList<Particula>();
}
void draw(){
  background(255);
  if(mousePressed){
    p.add( new Particula( mouseX, mouseY, mouseX-pmouseX, mouseY-pmouseY ) );
  }
  for(Particula tmp: p){
    tmp.actualizar();
    tmp.dibujar();
  }
}



