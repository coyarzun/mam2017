PImage img;
size(970, 647);
img = loadImage("winter.jpg");
for (int i=0; i<img.width; i++) {
  for (int j=0; j<img.height; j++) {    
    int   k   = i+j*img.width;
    color tmp = img.pixels[k];
    float r  = red(tmp);
    float g  = green(tmp);
    float b  = blue(tmp);
    float h  = hue(tmp);
    float s  = saturation(tmp);
    float br = brightness(tmp);
    if (i>img.width/2)r*=2;
    if (j>img.height/2)g*=2;
    b = map(atan2(height/2-j, width/2-i), 0, TWO_PI, 0, 255);
    tmp = color(r, g, b);
    img.pixels[k] = tmp;
  }
}
image(img, 0, 0);

