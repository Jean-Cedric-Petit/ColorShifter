PGraphics pg;
PImage image;

void setup() {
  size(64,128);
  image=loadImage("ADEL_N06.png");
  noLoop();
}

void draw() {
  println("largeur:"+image.width);
  println("hauteur:"+image.height);
  loadPixels();
  image.loadPixels();
  for(int j=0;j<image.height;j++){
    for(int i=0;i<image.width;i++){
      int p = image.pixels[j*image.width+i];
      float a = alpha(p);
      float r = red(p);
      float g = green(p);
      float b = blue(p);
      pixels[j*image.width+i]=color(b,r,g,a);
    }
  }
  image.updatePixels();
  updatePixels();
  save("LEDA.png");
}
