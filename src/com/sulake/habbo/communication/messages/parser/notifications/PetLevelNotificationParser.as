package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1976:int;
      
      private var var_2402:String;
      
      private var var_1334:int;
      
      private var var_1299:int;
      
      private var var_2003:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1976 = param1.readInteger();
         this.var_2402 = param1.readString();
         this.var_1334 = param1.readInteger();
         this.var_1299 = param1.readInteger();
         this.var_2003 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1976;
      }
      
      public function get petName() : String
      {
         return this.var_2402;
      }
      
      public function get level() : int
      {
         return this.var_1334;
      }
      
      public function get petType() : int
      {
         return this.var_1299;
      }
      
      public function get breed() : int
      {
         return this.var_2003;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
