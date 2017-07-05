PImage img;
size(960,467);
img = loadImage("winter.jpg");
for(int i=0; i<img.pixels.length; i++){
  color tmp = img.pixels[i];
  float r = red(tmp);
  float g = green(tmp);
  float b = blue(tmp);
  r*=2;
  tmp = color(r,g,b);
  img.pixels[i] = tmp;
}
image(img,0,0);
