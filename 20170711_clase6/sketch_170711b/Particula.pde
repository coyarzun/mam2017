class Particula{//Nombre de la clase en mayuscula
  float x, y;//posicion
  float dx, dy;//velocidad
  float tamano;
    
  Particula(){//constructor
    x      = random(width);
    y      = random(height);
    dx     = random(-10,10);
    dy     = random(-10,10);
    tamano = 16;
  }
  void actualizar(){
    x+=dx;
    y+=dy;
    if(x<0)     x+=width;
    if(x>width) x-=width;
    if(y<0)     y+=height;
    if(y>height)y-=height;
  }
  void dibujar(){
    pushMatrix();
    translate(x,y);
    ellipse(0,0,tamano,tamano);
    popMatrix();
  }
}

