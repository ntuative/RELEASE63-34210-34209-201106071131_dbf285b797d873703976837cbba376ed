package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2636:int;
      
      private var var_2638:int;
      
      private var var_1281:int;
      
      private var var_1280:int;
      
      private var var_1990:int;
      
      private var var_2637:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2636 = param1.readInteger();
         this.var_2638 = param1.readInteger();
         this.var_1281 = param1.readInteger();
         this.var_1280 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this.var_2637 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2636;
      }
      
      public function get charges() : int
      {
         return this.var_2638;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1281;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1280;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2637;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
   }
}
