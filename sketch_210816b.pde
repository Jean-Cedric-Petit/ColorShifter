PGraphics pg;
PImage image;

void setup() {
  size(128,128);
  image=loadImage("crystal.jpeg");
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
      //float supersomme = r+g+b;
      r=(r+b/(255*3))*0.75;
      g=(g+b/(255*3))*0.55;
      //r=b*0.70;
      //g=b*0.53;
      //b=255*pow(b/255,1.5);

      pixels[j*image.width+i]=color(r,g,b,a);
    }
  }
  image.updatePixels();
  updatePixels();
  save("CRYSTAL3.png");
}
