package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1861:int = 0;
      
      private var var_1860:int = 0;
      
      private var var_2493:int = 0;
      
      private var var_2495:Boolean = false;
      
      private var var_2494:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1861 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1860 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2493 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2495 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2494 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1861;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1860;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2493;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2495;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2494;
      }
   }
}
