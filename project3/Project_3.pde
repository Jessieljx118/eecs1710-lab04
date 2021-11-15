PImage base;
float[]pt1;
float[]pt2;
float refraction=0.1;

void setup() {
  size(720, 480);
  base=loadImage("kobe.jpg");
  base.resize(width, height);
  base.loadPixels();

  pt1=new float[width*height];
  pt2=new float[width*height];
  for (int i=0; i<pt1.length; i++) {
    pt1[i]=0;
    pt2[i]=0;
  }
}

void draw() {
  if (mousePressed) {
    pt2[mouseX+mouseY*width]+=800;
  }

  for (int x=1; x<width-1; x++) {
    for (int y=1; y<height-1; y++) {
      float avg=(pt2[x-1+y*width]+pt2[x+1+y*width]+pt2[x+(y-1)*width]+pt2[x+(y+1)*width])/4;
      pt1[x+y*width]=avg*2-pt1[x+y*width];
      pt1[x+y*width]*=0.98;
    }
  }

  loadPixels();
  float xoffset, yoffset;
  for (int x=1; x<width-1; x++) {
    for (int y=1; y<height-1; y++) {
      xoffset=(pt1[x-1+y*width]+pt1[x+1+y*width])*refraction;
      yoffset=(pt1[x+(y-1)*width]+pt1[x+(y-1)*width])*refraction;
      if (x+xoffset<0)xoffset=-x;
      if (x+xoffset>width-1)xoffset=width-1-x;
      if (y+yoffset<0)yoffset=-y;
      if (y+yoffset>height-1)yoffset=height-1-y;
      pixels[x+y*width]=base.pixels[int(x+xoffset)+int(y+yoffset)*width];
    }
  }
  updatePixels();

  float[]temp=pt1;
  pt1=pt2;
  pt2=temp;
}
