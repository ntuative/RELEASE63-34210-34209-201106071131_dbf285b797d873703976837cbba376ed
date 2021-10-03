package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2623:int = 0;
      
      private var var_1538:String = "";
      
      private var var_1953:String = "";
      
      private var var_2622:String = "";
      
      private var var_2621:String = "";
      
      private var var_1900:int = 0;
      
      private var var_2626:int = 0;
      
      private var var_2624:int = 0;
      
      private var var_1540:int = 0;
      
      private var var_2625:int = 0;
      
      private var var_1541:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2623 = param1;
         this.var_1538 = param2;
         this.var_1953 = param3;
         this.var_2622 = param4;
         this.var_2621 = param5;
         if(param6)
         {
            this.var_1900 = 1;
         }
         else
         {
            this.var_1900 = 0;
         }
         this.var_2626 = param7;
         this.var_2624 = param8;
         this.var_1540 = param9;
         this.var_2625 = param10;
         this.var_1541 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2623,this.var_1538,this.var_1953,this.var_2622,this.var_2621,this.var_1900,this.var_2626,this.var_2624,this.var_1540,this.var_2625,this.var_1541];
      }
   }
}
