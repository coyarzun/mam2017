PImage img;
size(960,467);
img = loadImage("winter.jpg");
for(int i=0; i<img.pixels.length; i+=3){
  color tmp = img.pixels[i];
  float r  = red(tmp);
  float g  = green(tmp);
  float b  = blue(tmp);
  float h  = hue(tmp);
  float s  = saturation(tmp);
  float br = brightness(tmp);
  /////////////
  if(h<32){
    r*=2;
    b = 255-b;
  }
  if(br<100) g=255-g;
  tmp = color(r,g,b);
  img.pixels[i] = tmp;
}
image(img,0,0);
