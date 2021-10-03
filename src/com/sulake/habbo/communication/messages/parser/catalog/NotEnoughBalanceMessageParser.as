package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2151:int = 0;
      
      private var var_2150:int = 0;
      
      private var var_1990:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2151;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2150;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function flush() : Boolean
      {
         this.var_2151 = 0;
         this.var_2150 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2151 = param1.readInteger();
         this.var_2150 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         return true;
      }
   }
}
