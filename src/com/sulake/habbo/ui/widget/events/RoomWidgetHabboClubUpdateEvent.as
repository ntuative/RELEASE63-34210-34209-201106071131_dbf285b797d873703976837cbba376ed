package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_308:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2899:int = 0;
      
      private var var_2898:int = 0;
      
      private var var_2897:int = 0;
      
      private var var_2896:Boolean = false;
      
      private var var_2344:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_308,param6,param7);
         this.var_2899 = param1;
         this.var_2898 = param2;
         this.var_2897 = param3;
         this.var_2896 = param4;
         this.var_2344 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2899;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2898;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2897;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2896;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2344;
      }
   }
}
