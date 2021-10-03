package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_895:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_845:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2327:int;
      
      private var var_2326:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_2326 = param2;
         this.var_2327 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2327;
      }
      
      public function get slotNumber() : int
      {
         return this.var_2326;
      }
   }
}
