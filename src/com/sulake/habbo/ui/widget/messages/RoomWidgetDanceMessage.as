package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_712:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1350:int = 0;
      
      public static const const_1956:Array = [2,3,4];
       
      
      private var var_86:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_712);
         this.var_86 = param1;
      }
      
      public function get style() : int
      {
         return this.var_86;
      }
   }
}
