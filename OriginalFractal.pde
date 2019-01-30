public void setup()
{
  rectMode(CENTER);
  size(600, 600);
  noStroke();
}

public void draw()
{
  background((int)(Math.random()*250 + 10));
  frameRate(10);
  fractal(300, 300, 250);
}

public void fractal(int x, int y, int size)
{
 int r = (int)(Math.random()*250 + 90);
 int g = (int)(Math.random()*250 + 90);
 int b = (int)(Math.random()*250 + 90); 
 
 fill(r, g, b, 90);
 ellipse(x, y, y, x);
 int boop = (int)(Math.random()*200+50);
 
 if(size > 30){
 fractal((x-boop),(y-boop), size/(int)(Math.random()*2+2));
 fractal((x+boop), (y+boop), size/(int)(Math.random()*2+2));
 fractal((x-boop), (y-boop), size/(int)(Math.random()*2+2));
 }
}
