package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2051:Boolean;
      
      private var _roomId:int;
      
      private var var_1077:String;
      
      private var var_2852:int;
      
      private var var_2851:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2051 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_1077 = param1.readString();
         this.var_2852 = param1.readInteger();
         this.var_2851 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2051;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_1077;
      }
      
      public function get enterHour() : int
      {
         return this.var_2852;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2851;
      }
   }
}
