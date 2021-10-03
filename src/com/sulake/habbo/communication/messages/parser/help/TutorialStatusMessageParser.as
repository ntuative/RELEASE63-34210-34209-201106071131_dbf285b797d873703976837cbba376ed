package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1133:Boolean;
      
      private var var_1132:Boolean;
      
      private var var_1412:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1133;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1132;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1412;
      }
      
      public function flush() : Boolean
      {
         this.var_1133 = false;
         this.var_1132 = false;
         this.var_1412 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1133 = param1.readBoolean();
         this.var_1132 = param1.readBoolean();
         this.var_1412 = param1.readBoolean();
         return true;
      }
   }
}
