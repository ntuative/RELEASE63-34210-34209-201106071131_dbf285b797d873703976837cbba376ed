package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1718:int;
      
      private var var_1922:int;
      
      private var var_1923:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1922 = param1.readInteger();
         this.var_1718 = param1.readInteger();
         this.var_1923 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1718 = 0;
         this.var_1922 = 0;
         this.var_1923 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1718;
      }
      
      public function get messageId() : int
      {
         return this.var_1922;
      }
      
      public function get timestamp() : String
      {
         return this.var_1923;
      }
   }
}
