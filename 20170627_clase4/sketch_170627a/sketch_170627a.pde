//buenas tardes
float x, y;//define posicion horizontal y vertical

void setup(){
  x = random(width);//valor entre 0 y el ancho
  y = random(height);//valor entre 0 y el alto
}
void draw(){
  ellipse(x,y,10,10);//dibujamos ellipse en pos x,y, de tamaño 10x10px
}
