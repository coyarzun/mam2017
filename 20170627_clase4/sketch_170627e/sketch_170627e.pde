//buenas tardes
float x, y;//define posicion horizontal y vertical
float dx, dy;//define velocidad en x e y
////////////////////
void setup(){
  iniciarVariables();
}
void draw(){//brownian motion
  background(196);
  ellipse(x,y,10,10);//dibujamos ellipse en pos x,y, de tamaño 10x10px
  actualizar();
}
void mousePressed(){
  iniciarVariables();
}













//
void iniciarVariables(){//método inicio
  x  = random(width);//valor entre 0 y el ancho
  y  = random(height);//valor entre 0 y el alto
  dx = random(-10, 10);//valor entre -10 y 10
  dy = random(-10, 10);//valor entre -10 y 10
}
void actualizar(){
  x += dx;
  y += dy;
  checarLimitesRebote();  
}
void checarLimitesRebote(){
  if(x<0 || x>width)  dx *= -1;//cambia la direccion
  if(y<0 || y>height) dy *= -1;//cambia la direccion
}
void checarLimitesToroide(){
  //revisar esto para despes
  //evaluemos los limites //continuidad // toroirdal
  if(x<0)      x+= width;
  if(x>width)  x-= width;
  if(y<0)      y+= height;
  if(y>height) y-= height;
}




