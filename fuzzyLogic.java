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
public class fuzzyLogic {
  public static void main(String[] args) {
  convexFlow controller = new convexFlow();
  mass(controller);
  }
  static void mass(signal type){
  type.flow();
  }
}
