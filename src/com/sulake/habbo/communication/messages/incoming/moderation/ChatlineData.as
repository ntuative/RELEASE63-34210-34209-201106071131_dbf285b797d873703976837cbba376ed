package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2614:int;
      
      private var var_2613:int;
      
      private var var_2612:int;
      
      private var var_2611:String;
      
      private var var_1708:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2614 = param1.readInteger();
         this.var_2613 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this.var_2611 = param1.readString();
         this.var_1708 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2614;
      }
      
      public function get minute() : int
      {
         return this.var_2613;
      }
      
      public function get chatterId() : int
      {
         return this.var_2612;
      }
      
      public function get chatterName() : String
      {
         return this.var_2611;
      }
      
      public function get msg() : String
      {
         return this.var_1708;
      }
   }
}
