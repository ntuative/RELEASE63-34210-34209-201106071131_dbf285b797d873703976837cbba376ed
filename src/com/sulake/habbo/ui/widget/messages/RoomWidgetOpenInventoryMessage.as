package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_788:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1210:String = "inventory_effects";
      
      public static const const_1371:String = "inventory_badges";
      
      public static const const_1687:String = "inventory_clothes";
      
      public static const const_1818:String = "inventory_furniture";
       
      
      private var var_2510:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_788);
         this.var_2510 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2510;
      }
   }
}
