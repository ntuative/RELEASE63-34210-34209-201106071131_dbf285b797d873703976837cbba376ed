package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_151:String = "ROE_MOUSE_CLICK";
      
      public static const const_180:String = "ROE_MOUSE_ENTER";
      
      public static const const_520:String = "ROE_MOUSE_MOVE";
      
      public static const const_184:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2092:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_514:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2078:String = "";
      
      private var var_2500:Boolean;
      
      private var var_2499:Boolean;
      
      private var var_2504:Boolean;
      
      private var var_2503:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2078 = param2;
         this.var_2500 = param5;
         this.var_2499 = param6;
         this.var_2504 = param7;
         this.var_2503 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2078;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2500;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2499;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2504;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2503;
      }
   }
}
