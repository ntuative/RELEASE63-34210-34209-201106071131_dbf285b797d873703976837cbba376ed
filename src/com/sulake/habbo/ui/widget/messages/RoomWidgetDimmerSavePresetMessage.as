package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_710:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2346:int;
      
      private var var_2347:int;
      
      private var _color:uint;
      
      private var var_1174:int;
      
      private var var_2348:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_710);
         this.var_2346 = param1;
         this.var_2347 = param2;
         this._color = param3;
         this.var_1174 = param4;
         this.var_2348 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2346;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2347;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1174;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2348;
      }
   }
}
