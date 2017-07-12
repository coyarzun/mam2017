Particula p, q, r;

void setup(){
  size(400,400);
  p = new Particula();//crear instancia
  q = new Particula();//crear instancia
  r = new Particula();//crear instancia
}
void draw(){
  background(255);
  p.actualizar();
  q.actualizar();
  r.actualizar();
  p.actualizar();
  q.dibujar();
  r.dibujar();
}



