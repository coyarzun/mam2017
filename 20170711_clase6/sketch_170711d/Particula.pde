class Particula{//Nombre de la clase en mayuscula
  float x, y;//posicion
  float dx, dy;//velocidad
  float tamano;
    
  Particula(float xx, float yy, float vx, float vy){//constructor
    x      = xx;
    y      = yy;
    dx     = vx;
    dy     = vy;
    tamano = 8;
  }
  void actualizar(){
    x+=dx;
    y+=dy;
    dx*=0.9;
    dy*=0.9;
    if(x<0)     x+=width;
    if(x>width) x-=width;
    if(y<0)     y+=height;
    if(y>height)y-=height;
    //if(x<0 || x>width) dx*=-1;
    //if(y<0 || y>height) dy*=-1;
  }
  void dibujar(){
    pushMatrix();
    translate(x,y);
    ellipse(0,0,tamano,tamano);
    popMatrix();
  }
}

