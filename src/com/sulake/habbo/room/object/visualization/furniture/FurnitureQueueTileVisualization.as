package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1521:int = 3;
      
      private static const const_1490:int = 2;
      
      private static const const_1491:int = 1;
      
      private static const const_1489:int = 15;
       
      
      private var var_333:Array;
      
      private var var_1225:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_333 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1490)
         {
            this.var_333 = new Array();
            this.var_333.push(const_1491);
            this.var_1225 = const_1489;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1225 > 0)
         {
            --this.var_1225;
         }
         if(this.var_1225 == 0)
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
