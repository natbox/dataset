/*-----------------------------------------------------------------------------
-------------------------------------------------------------------------------
                            |
         FM-VABE            |  Fluidmotion: Thermoelectric Control Engineering
           400              |  www.fluidmotion.at
                            |
-------------------------------------------------------------------------------
   Copyright (C) 2024 Fluidmotion Mechatronics LLC
-------------------------------------------------------------------------------
-----------------------------------------------------------------------------*/
public class fuzzyLogic {
  public static void main(String[] args) {
  convexFlow controller = new convexFlow();
  volume(controller);
  }
  static void volume(signal type){
  type.patch();
  }
}
