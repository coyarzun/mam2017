//colorMode(HSB);
colorMode(RGB);
for(int i=0; i<width; i++){
  for(int j=0; j<height; j++){
    set(i,j, color(
                    random(255),
                    map(i,0,width,0,255),
                    map(j,0,height,0,255)) 
                    );
  }
}
