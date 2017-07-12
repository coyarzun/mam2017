class Particula{//Nombre de la clase en mayuscula
  float x, y;//posicion
  float dx, dy;//velocidad
  float tamano;
    
  Particula(){//constructor
    x      = random(width);//width/2;//
    y      = height/2;//random(height);
    dx     = 10;//random(-10,10);
    dy     = random(-10,10);
    tamano = 8;
  }
  void actualizar(){
    x+=dx;
    y+=dy;
    /*if(x<0)     x+=width;
    if(x>width) x-=width;
    if(y<0)     y+=height;
    if(y>height)y-=height;*/
    if(x<0 || x>width) dx*=-1;
    if(y<0 || y>height) dy*=-1;
  }
  void dibujar(){
    pushMatrix();
    translate(x,y);
    ellipse(0,0,tamano,tamano);
    popMatrix();
  }
}

