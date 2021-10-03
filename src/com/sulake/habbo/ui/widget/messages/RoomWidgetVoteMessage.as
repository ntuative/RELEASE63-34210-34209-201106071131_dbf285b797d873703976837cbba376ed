package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_123:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1793:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_123);
         this.var_1793 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1793;
      }
   }
}
