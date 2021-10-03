package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_427:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1293:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1221:String = "RWOCM_PIXELS";
      
      public static const const_1367:String = "RWOCM_CREDITS";
       
      
      private var var_2345:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_427);
         this.var_2345 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2345;
      }
   }
}
