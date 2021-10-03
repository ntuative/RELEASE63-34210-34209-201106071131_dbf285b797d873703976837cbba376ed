package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1763:int = 0;
      
      private var var_1498:Dictionary;
      
      private var var_1861:int = 0;
      
      private var var_1860:int = 0;
      
      private var var_2494:Boolean = false;
      
      private var var_2560:int = 0;
      
      private var var_2559:int = 0;
      
      public function Purse()
      {
         this.var_1498 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1763;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1763 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1861;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1861 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1860;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1860 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1861 > 0 || this.var_1860 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2494;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2494 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2560;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2560 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2559;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2559 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1498;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1498 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1498[param1];
      }
   }
}
