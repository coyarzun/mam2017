size(400,400);
colorMode(HSB);
background(0);
for(int i=0; i<10000; i++){
  stroke(random(160,240), 255, 255);
  strokeWeight( random(8) );
  point( random(width), random(height) );
}
