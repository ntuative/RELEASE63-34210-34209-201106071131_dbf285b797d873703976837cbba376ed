package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_655:String;
      
      private var var_2716:String;
      
      private var var_991:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_655 = param1;
         this.var_991 = param2;
         this.var_2716 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function get race() : String
      {
         return this.var_2716;
      }
      
      public function get gender() : String
      {
         return this.var_991;
      }
   }
}
