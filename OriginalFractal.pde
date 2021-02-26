public void setup(){
  size(400, 400);
  ellipseMode(CENTER);
}
public void draw(){
  background(0);
  myFractal(200, 200, 380);
}
public void mousePressed(){
  stroke((int)(Math.random()*155+100), (int)(Math.random()*155+100), (int)(Math.random()*155+100));
  fill((int)(Math.random()*155+100), (int)(Math.random()*155+100), (int)(Math.random()*155+100));
}
public void myFractal(int x, int y,int siz){
  ellipse(x, y, siz, siz);
  if(siz > 15){
    myFractal(x - siz/4, y, siz/3);
    myFractal(x + siz/4, y, siz/3);
    myFractal(x, y - siz/4, siz/3);
    myFractal(x, y + siz/4, siz/3);
    myFractal(x - siz/3, y - siz/3, siz/3);
    myFractal(x + siz/3, y + siz/3, siz/3);
    myFractal(x + siz/3, y - siz/3, siz/3);
    myFractal(x - siz/3, y + siz/3, siz/3);
  }
}
