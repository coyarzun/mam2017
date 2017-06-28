//buenas tardes
float x, y;//define posicion horizontal y vertical
float dx, dy;//define velocidad en x e y

void setup(){
  x  = random(width);//valor entre 0 y el ancho
  y  = random(height);//valor entre 0 y el alto
   
}
void draw(){//brownian motion
  ellipse(x,y,10,10);//dibujamos ellipse en pos x,y, de tamaño 10x10px
  dx = random(-1, 1);//valor entre -10 y 10
  dy = random(-1, 1);//valor entre -10 y 10
  x += dx;
  y += dy;  
}
