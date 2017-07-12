Particula p, q, r;

void setup(){
  size(400,400);
  p = new Particula();//crear instancia
  q = new Particula();//crear instancia
  r = new Particula();//crear instancia
}
void draw(){
  
  p.actualizar();
  q.actualizar();
  r.actualizar();
  p.actualizar();
  q.dibujar();
  r.dibujar();
  
  background(
  map(p.x,0,width,0,255),
  map(q.x,0,width,0,255),
  map(r.x,0,width,0,255)
  );
}



