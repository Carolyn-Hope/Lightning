void setup(){
  size(500,500);
  background(0);
}
void draw(){
  fill(0,0,0,10);
  rect(0,0,width,height);
}
void mousePressed(){
  stroke(255,200,255);
  fill(255);
  lightning(width/2,0,2);
}

void lightning(int x, int y, int layer){
  double splitchance = 0.015;
  int endX;
  int endY;
    while(x >= 0 && x < width && y >= 0 && y < height){
      endX = x + ((int)(Math.random() * 19) - 9);
      endY = y + ((int)(Math.random() * 10));
      line(x,y,endX,endY);
      if(layer > 0 && Math.random() < splitchance){
        lightning(endX, endY, layer - 1);
      }
      x = endX;
      y = endY;
    }
}
