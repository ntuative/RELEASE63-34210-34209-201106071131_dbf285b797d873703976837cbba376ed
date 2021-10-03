package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetCreditFurniRedeemMessage extends RoomWidgetMessage
   {
      
      public static const const_984:String = "RWFCRM_REDEEM";
       
      
      private var var_226:int;
      
      public function RoomWidgetCreditFurniRedeemMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_226 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
   }
}
