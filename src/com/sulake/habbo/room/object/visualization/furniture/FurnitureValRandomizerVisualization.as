package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1094:int = 20;
      
      private static const const_698:int = 10;
      
      private static const const_1620:int = 31;
      
      private static const const_1521:int = 32;
      
      private static const const_697:int = 30;
       
      
      private var var_333:Array;
      
      private var var_822:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_333 = new Array();
         super();
         super.setAnimation(const_697);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_698)
         {
            if(this.var_822)
            {
               this.var_822 = false;
               this.var_333 = new Array();
               if(direction == 2)
               {
                  this.var_333.push(const_1094 + 5 - param1);
                  this.var_333.push(const_698 + 5 - param1);
               }
               else
               {
                  this.var_333.push(const_1094 + param1);
                  this.var_333.push(const_698 + param1);
               }
               this.var_333.push(const_697);
               return;
            }
            super.setAnimation(const_697);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
