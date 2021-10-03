package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetDanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_747:String = "RWUE_DANCE";
       
      
      private var var_86:int;
      
      public function RoomWidgetDanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_747,param2,param3);
         this.var_86 = param1;
      }
      
      public function get style() : int
      {
         return this.var_86;
      }
   }
}
