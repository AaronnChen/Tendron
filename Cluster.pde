int i = 50;
int numRecursions = 3;
public void setup()
{
  size(800, 800);  
  background(255);
  noLoop();
}

public void draw()
{
  background(30, 25, 25);
  fill(255);
  textSize(100);
  text("recursions: " + numRecursions, 90, 100);
  Cluster c = new Cluster(i, mouseX, mouseY); 
  c.show();
}
public void mousePressed()
{
  redraw();
}
public void keyPressed()
{
  if(keyPressed == true && (keyCode == 'a' || keyCode == 'A') && i <= 200) {
    i *= 4;
    numRecursions++;
  }
  if(keyPressed == true && (keyCode == 's' || keyCode == 'S') && i >= 12) {
    i /= 4;
    numRecursions--;
  }
}
