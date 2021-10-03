package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_226:int = 0;
      
      private var var_2019:int = 0;
      
      private var var_1969:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2019;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1969;
      }
      
      public function flush() : Boolean
      {
         this.var_226 = 0;
         this.var_2019 = 0;
         this.var_1969 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_226 = param1.readInteger();
         this.var_2019 = param1.readInteger();
         this.var_1969 = param1.readString();
         return true;
      }
   }
}
