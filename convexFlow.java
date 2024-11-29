/* ----------------------------------------------------------------------------
-------------------------------------------------------------------------------
                            |
         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
           400              |  www.fluidmotion.at
                            |
-------------------------------------------------------------------------------
   Copyright (C) 2024 Fluidmotion Mechatronics GmbH
-------------------------------------------------------------------------------
-----------------------------------------------------------------------------*/
import java.util.Arrays;
public class convexFlow implements signal {
  public convexFlow (){}
  int[] array = {3375, 1000, 10648, 264, 4913};
  int min = Arrays.stream(array).min().getAsInt();
  int max = Arrays.stream(array).max().getAsInt();
  int f = max-min; // float to int
  public void flow()
  {
    int j = array.length;
    for (int i = 0; i < j; i++) {
    int predictor = array[i];
    System.out.println(predictor);
    }
    System.out.println("*"+f+"*");
    for (int i = 0; i < j; i++) {
    Arrays.sort(array);
    int increment = array[i];
    System.out.println(increment);
    }
  }
}
