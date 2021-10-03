package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1610:Boolean;
      
      private var var_1863:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1610;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1863;
      }
      
      public function flush() : Boolean
      {
         this.var_1610 = false;
         this.var_1863 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1610 = param1.readInteger() > 0;
         this.var_1863 = param1.readInteger();
         return true;
      }
   }
}
