package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2317:Number = 0.0;
      
      private var var_2315:Number = 0.0;
      
      private var var_2314:Number = 0.0;
      
      private var var_2316:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2317 = param1;
         this.var_2315 = param2;
         this.var_2314 = param3;
         this.var_2316 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2317;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2315;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2314;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2316;
      }
   }
}
