package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_599:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_519:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
      
      public static const const_404:String = "RWOPPUE_OPEN_PET_PACKAGE_UPDATE_PET_IMAGE";
       
      
      private var var_226:int = -1;
      
      private var var_48:BitmapData = null;
      
      private var var_2019:int = 0;
      
      private var var_1969:String = null;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_226 = param2;
         this.var_48 = param3;
         this.var_2019 = param4;
         this.var_1969 = param5;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2019;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1969;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
   }
}
