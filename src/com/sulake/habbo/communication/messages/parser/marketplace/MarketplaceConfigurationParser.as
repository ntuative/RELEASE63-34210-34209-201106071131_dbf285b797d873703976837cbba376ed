package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1524:Boolean;
      
      private var var_2388:int;
      
      private var var_2024:int;
      
      private var var_2025:int;
      
      private var var_2389:int;
      
      private var var_2390:int;
      
      private var var_2391:int;
      
      private var var_2306:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1524;
      }
      
      public function get commission() : int
      {
         return this.var_2388;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2024;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2025;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2390;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2389;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2391;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2306;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1524 = param1.readBoolean();
         this.var_2388 = param1.readInteger();
         this.var_2024 = param1.readInteger();
         this.var_2025 = param1.readInteger();
         this.var_2390 = param1.readInteger();
         this.var_2389 = param1.readInteger();
         this.var_2391 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         return true;
      }
   }
}
