float x, y;

void setup() {
  size(400, 400); 
  colorMode(HSB);
  background(0);
}
void draw() {
  //background(196);
  noStroke();
  fill(0, 8);
  rect(0, 0, width, height);

  if (mousePressed) {
    float s = random(10);
    x = mouseX;
    y = mouseY;
    fill(frameCount%256, 255, 255);
    ellipse(x, y, s, s);
    ellipse(width-x, y, s, s);
    ellipse(x, height-y, s, s);
    ellipse(width-x, height-y, s, s);
  }
}

