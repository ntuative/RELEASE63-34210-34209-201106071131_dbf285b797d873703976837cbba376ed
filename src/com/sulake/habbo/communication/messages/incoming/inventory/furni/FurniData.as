package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2547:int;
      
      private var var_1433:String;
      
      private var _objId:int;
      
      private var var_1961:int;
      
      private var _category:int;
      
      private var var_2196:String;
      
      private var var_2548:Boolean;
      
      private var var_2549:Boolean;
      
      private var var_2551:Boolean;
      
      private var var_2550:Boolean;
      
      private var var_2537:int;
      
      private var var_1463:int;
      
      private var var_1901:String = "";
      
      private var var_1903:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2547 = param1;
         this.var_1433 = param2;
         this._objId = param3;
         this.var_1961 = param4;
         this._category = param5;
         this.var_2196 = param6;
         this.var_2548 = param7;
         this.var_2549 = param8;
         this.var_2551 = param9;
         this.var_2550 = param10;
         this.var_2537 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1901 = param1;
         this.var_1463 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2547;
      }
      
      public function get itemType() : String
      {
         return this.var_1433;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1961;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2196;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2548;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2549;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2551;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2550;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2537;
      }
      
      public function get slotId() : String
      {
         return this.var_1901;
      }
      
      public function get songId() : int
      {
         return this.var_1903;
      }
      
      public function get extra() : int
      {
         return this.var_1463;
      }
   }
}
