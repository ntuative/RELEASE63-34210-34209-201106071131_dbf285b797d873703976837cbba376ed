package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_945:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_226:int = -1;
      
      private var var_1388:String;
      
      private var _text:String;
      
      private var var_343:String;
      
      private var var_27:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         this.var_226 = param2;
         this.var_1388 = param3;
         this._text = param4;
         this.var_343 = param5;
         this.var_27 = param6;
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
      
      public function get objectType() : String
      {
         return this.var_1388;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_343;
      }
      
      public function get controller() : Boolean
      {
         return this.var_27;
      }
   }
}
