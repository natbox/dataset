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
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Random;
import java.util.List;
import java.util.function.Consumer;
public class lambdaPrediction {
    public static void main(String args[])
    {   Consumer<List<Integer>> modify = list -> {
            for (int i = 0; i < list.size(); i++)
                list.set(i, list.get(i));
        };
        Random rand = new Random();
        int rand_int1 = rand.nextInt(10384);
        int rand_int2 = rand.nextInt(10648);
        int rand_int3 = rand.nextInt(10946);
        Consumer<List<Integer>>
            dispList = list -> list.stream().forEach(b -> System.out.print(b+" "));
        List<Integer> list = new ArrayList<Integer>();
        list.add(rand_int1);
        list.add(rand_int2);
        list.add(rand_int3);
        modify.andThen(dispList).accept(list);
        System.out.println("kelvinseconds per meter");
        ;
    }
}