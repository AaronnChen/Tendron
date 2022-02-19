int i = 50;
int numRecursions = 3;
public void setup()
{
  size(600, 600);  
  background(255);
  noLoop();
}

public void draw()
{
  background(30, 25, 25);
  Cluster c = new Cluster(i, mouseX, mouseY); 
  c.show();
  fill(255);
  textSize(50);
  text("recursions: " + numRecursions, 140, 70);
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
