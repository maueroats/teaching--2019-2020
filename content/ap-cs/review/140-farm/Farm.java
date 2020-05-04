import java.util.*;

public class Farm {
  private ArrayList<String> stock;
  public Farm(ArrayList<String> contents) {
    stock = contents;
  }
  public int slaughter(List<String> animals) {
    // WRITE
    return 0;
  }
  public void feed(String animal_type) {
    // WRITE
  }
  public String toString() {
    String ans = "[A Farm containing:\n";
    for(String a : stock) {
      ans += "   " + a + "\n";
    }
    return ans + "]";
  }

  public static Farm demoFarm() {
    ArrayList<String> c = new ArrayList<>();
    c.add("chicken");
    c.add("chicken");
    c.add("chicken");
    c.add("pig");
    c.add("pig");
    c.add("lamb");
    return new Farm(c);
  }
}
