package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.Dictionary;
   
   public class PollContentsParser implements IMessageParser
   {
       
      
      private var _id:int = -1;
      
      private var var_1785:String = "";
      
      private var var_1786:String = "";
      
      private var var_1456:int = 0;
      
      private var var_1457:Array = null;
      
      public function PollContentsParser()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get startMessage() : String
      {
         return this.var_1785;
      }
      
      public function get endMessage() : String
      {
         return this.var_1786;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1456;
      }
      
      public function get method_1() : Array
      {
         return this.var_1457;
      }
      
      public function flush() : Boolean
      {
         this._id = -1;
         this.var_1785 = "";
         this.var_1786 = "";
         this.var_1456 = 0;
         this.var_1457 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         this._id = param1.readInteger();
         this.var_1785 = param1.readString();
         this.var_1786 = param1.readString();
         this.var_1456 = param1.readInteger();
         this.var_1457 = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1456)
         {
            _loc3_ = new Dictionary();
            this.var_1457.push(_loc3_);
            _loc3_["id"] = param1.readInteger();
            _loc3_["number"] = param1.readInteger();
            _loc3_["type"] = param1.readInteger();
            _loc3_["content"] = param1.readString();
            if(_loc3_["type"] == 1 || _loc3_["type"] == 2)
            {
               _loc4_ = param1.readInteger();
               _loc5_ = new Array();
               _loc3_["selections"] = _loc5_;
               _loc3_["selection_count"] = _loc4_;
               _loc3_["selection_min"] = param1.readInteger();
               _loc3_["selection_max"] = param1.readInteger();
               _loc6_ = 0;
               while(_loc6_ < _loc4_)
               {
                  _loc5_.push(param1.readString());
                  _loc6_++;
               }
            }
            _loc2_++;
         }
         return true;
      }
   }
}
