//buenas tardes
float x, y;//define posicion horizontal y vertical
float dx, dy;//define velocidad en x e y

void setup(){
  inicio();
}
void inicio(){
  x  = random(width);//valor entre 0 y el ancho
  y  = random(height);//valor entre 0 y el alto
  dx = random(-10, 10);//valor entre -10 y 10
  dy = random(-10, 10);//valor entre -10 y 10
}
void draw(){//brownian motion
  background(196);
  ellipse(x,y,10,10);//dibujamos ellipse en pos x,y, de tamaño 10x10px
  x += dx;
  y += dy;  
  //evaluemos los limites //continuidad // toroirdal
  if(x<0)      x+= width;
  if(x>width)  x-= width;
  if(y<0)      y+= height;
  if(y>height) y-= height;
}
