public class Cluster {
    public final static int numStems = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        for(int i = 0; i < numStems; i++) {
          Tendril t = new Tendril(len, ((i * 2) * PI) / 7,x, y);
          t.show();
        }
    }
    
    public void show() {
      
    }
}
