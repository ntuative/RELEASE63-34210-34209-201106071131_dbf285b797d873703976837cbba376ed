package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_797:int = 1;
      
      public static const const_976:int = 2;
      
      public static const const_893:int = 3;
      
      public static const const_1208:int = 4;
      
      public static const const_780:int = 5;
      
      public static const const_1330:int = 6;
       
      
      private var _type:int;
      
      private var var_1196:int;
      
      private var var_2231:String;
      
      private var var_2758:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1196 = param2;
         this.var_2231 = param3;
         this.var_2758 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2231;
      }
      
      public function get time() : String
      {
         return this.var_2758;
      }
      
      public function get senderId() : int
      {
         return this.var_1196;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
