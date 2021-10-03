package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2064:int;
      
      private var var_2834:int;
      
      private var var_1596:int;
      
      private var var_2654:int;
      
      private var var_136:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2064 = param1.readInteger();
         this.var_2834 = param1.readInteger();
         this.var_1596 = param1.readInteger();
         this.var_2654 = param1.readInteger();
         this.var_136 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2064);
      }
      
      public function get callId() : int
      {
         return this.var_2064;
      }
      
      public function get method_9() : int
      {
         return this.var_2834;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1596;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2654;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_136;
      }
   }
}
