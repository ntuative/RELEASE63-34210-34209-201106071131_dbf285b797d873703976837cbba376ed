package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1094:int = 10;
      
      private static const const_698:int = 20;
      
      private static const const_1620:int = 31;
      
      private static const const_1521:int = 32;
       
      
      private var var_333:Array;
      
      private var var_822:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_333 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_822)
            {
               this.var_822 = true;
               this.var_333 = new Array();
               this.var_333.push(const_1620);
               this.var_333.push(const_1521);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1094)
         {
            if(this.var_822)
            {
               this.var_822 = false;
               this.var_333 = new Array();
               this.var_333.push(const_1094 + param1);
               this.var_333.push(const_698 + param1);
               this.var_333.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_333.length > 0)
            {
               super.setAnimation(this.var_333.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
