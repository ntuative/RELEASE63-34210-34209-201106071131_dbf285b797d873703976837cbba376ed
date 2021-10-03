package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_579:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_226:int;
      
      private var var_431:String;
      
      private var var_1388:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_226 = param2;
         this.var_431 = param3;
         this.var_1388 = param4;
      }
      
      public function get location() : String
      {
         return this.var_431;
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
      
      public function get objectType() : String
      {
         return this.var_1388;
      }
   }
}
