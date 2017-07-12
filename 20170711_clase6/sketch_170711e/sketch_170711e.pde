ArrayList<Particula> p;

void setup(){
  size(400,400);
  p = new ArrayList<Particula>();
}
void draw(){
  background(196);
  if(mousePressed){
    p.add( new Particula( mouseX, mouseY, mouseX-pmouseX, mouseY-pmouseY ) );
  }
  for(int i=0; i<p.size(); i++){
    Particula tmp = (Particula)p.get(i);
    tmp.actualizar();
    tmp.dibujar();
    if(tmp.life<0) p.remove(i);
  }
}



