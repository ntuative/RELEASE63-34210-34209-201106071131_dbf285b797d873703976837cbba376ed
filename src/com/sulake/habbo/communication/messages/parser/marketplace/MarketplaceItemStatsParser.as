package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2362:int;
      
      private var var_2361:int;
      
      private var var_2363:int;
      
      private var _dayOffsets:Array;
      
      private var var_1753:Array;
      
      private var var_1754:Array;
      
      private var var_2365:int;
      
      private var var_2364:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2362;
      }
      
      public function get offerCount() : int
      {
         return this.var_2361;
      }
      
      public function get historyLength() : int
      {
         return this.var_2363;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1753;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1754;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2365;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2364;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2362 = param1.readInteger();
         this.var_2361 = param1.readInteger();
         this.var_2363 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1753 = [];
         this.var_1754 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1753.push(param1.readInteger());
            this.var_1754.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2364 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         return true;
      }
   }
}
