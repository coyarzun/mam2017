Particula p, q;

void setup(){
  size(400,400);
  p = new Particula();//crear instancia
  q = new Particula();//crear instancia
}
void draw(){
  background(255);
  p.update();
  q.update();
  p.draw();
  q.draw();
}



