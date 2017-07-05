PImage img;

void setup(){
  size(400,400);
  img = loadImage("winter.jpg");
}
void draw(){
  image(img, 0,0,width,height);
  color test = get(mouseX,mouseY);
  println(hex(test));
  fill(test);
  rect(mouseX,mouseY,20,20);
  filter(THRESHOLD, 0.5);
}

