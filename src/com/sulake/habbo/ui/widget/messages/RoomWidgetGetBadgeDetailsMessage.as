package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_793:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1650:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_793);
         this.var_1650 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1650;
      }
   }
}
