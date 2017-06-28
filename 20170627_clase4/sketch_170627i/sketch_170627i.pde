float[] x, y;
//sean x e y, arreglos flotantes
int dim = 1000;

void setup(){
  x = new float[dim];//dimensionar array
  y = new float[dim];//dimensionar array
  for(int i=0; i<dim; i++){//poblamos los array
    x[i] =  random(width);
    y[i] =  random(height); 
  }
}
void draw(){
  background(0);
  for(int i=0; i<dim; i++){//leemos los array
    stroke(random(255));
    point(x[i], y[i]);
    x[i] --; 
    if(x[i]<0) x[i]+= width;
  }
  ellipse(frameCount%width,50,10,10);
}
