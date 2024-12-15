PGraphics pg;
PImage image;

void setup() {
  size(58,21);
  image=loadImage("ZFODM0.png");
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
     r=255*pow(r/255,1.5);
     g=255*pow(g/255,1.5);
     b=255*pow(b/255,1.5);
      if(a==0){
        r=0;
        g=255;
        b=255;
        a=255;
        pixels[j*image.width+i]=color(r,g,b,a);
      }else{
        pixels[j*image.width+i]=color(r,g,b,a);
      }
      
    }
  }
  image.updatePixels();
  updatePixels();
  save("ZZODM0.png");
}
