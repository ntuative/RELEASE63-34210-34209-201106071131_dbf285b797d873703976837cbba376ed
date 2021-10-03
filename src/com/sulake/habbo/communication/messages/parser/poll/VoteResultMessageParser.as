package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1328:String;
      
      private var var_1518:Array;
      
      private var var_1321:Array;
      
      private var var_2146:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1328;
      }
      
      public function get choices() : Array
      {
         return this.var_1518.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1321.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2146;
      }
      
      public function flush() : Boolean
      {
         this.var_1328 = "";
         this.var_1518 = [];
         this.var_1321 = [];
         this.var_2146 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1328 = param1.readString();
         this.var_1518 = [];
         this.var_1321 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1518.push(param1.readString());
            this.var_1321.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2146 = param1.readInteger();
         return true;
      }
   }
}
