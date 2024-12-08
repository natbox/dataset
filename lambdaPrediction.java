/* ----------------------------------------------------------------------------
-------------------------------------------------------------------------------
                            |
         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
           400              |  www.fluidmotion.pl
                            |
-------------------------------------------------------------------------------
   Copyright (C) 2024 Fluidmotion Mechatronics LLC
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
        int rand_int3 = rand.nextInt(  264);
        int rand_int4 = rand.nextInt(46656);
        Consumer<List<Integer>>
            dispList = list -> list.stream().forEach(b -> System.out.print(b+" "));
        List<Integer> list = new ArrayList<Integer>();
        // list.add(rand_int3);
        list.add(rand_int4);
        modify.andThen(dispList).accept(list);
        System.out.println("kelvinseconds per meter");
        ;
    }
}
