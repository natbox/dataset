/*-----------------------------------------------------------------------------
-------------------------------------------------------------------------------
                            |
         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
           400              |  www.fluidmotion.lt
                            |
-------------------------------------------------------------------------------
   Copyright (C) 2024 Fluidmotion Mechatronics UAB
-------------------------------------------------------------------------------
-----------------------------------------------------------------------------*/
import java.util.Arrays;
public class convexFlow implements signal {
  public convexFlow (){}
  int[] testing_sub = {3375, 1000, 10648, 264, 10946, 4913};
  int min = Arrays.stream(testing_sub).min().getAsInt();
  int max = Arrays.stream(testing_sub).max().getAsInt();
  int f = max-min;
  public void proto()
  {
    int j = testing_sub.length;
    for (int i = 0; i < j; i++) {
    int predictor = testing_sub[i];
    System.out.println(predictor);
    }
    System.out.println("Temperature: "+f);
    for (int i = 0; i < j; i++) {
    Arrays.sort(testing_sub);
    int increment = testing_sub[i];
    System.out.println(increment);
    }
  }
}
