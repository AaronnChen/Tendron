class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;
    stroke(0, 255, 255);
    strokeWeight(2);
    for(int i = 0; i < myNumSegments; i++) {
      myAngle += Math.random() * 0.4 - 0.2;
      int endX = (int)(startX + Math.cos(myAngle) * SEG_LENGTH);
      System.out.println(endX);
      int endY = (int)(startY + Math.sin(myAngle) * SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    
    if(myNumSegments > 10) {
      myNumSegments /= 4;
      new Cluster(myNumSegments, startX, startY);
    }
  }
}
