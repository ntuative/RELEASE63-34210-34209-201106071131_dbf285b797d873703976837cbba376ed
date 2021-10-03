package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2321:int;
      
      private var var_1433:String;
      
      private var var_2949:int;
      
      private var var_2951:int;
      
      private var _category:int;
      
      private var var_2196:String;
      
      private var var_1463:int;
      
      private var var_2952:int;
      
      private var var_2953:int;
      
      private var var_2948:int;
      
      private var var_2947:int;
      
      private var var_2950:Boolean;
      
      private var var_3049:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2321 = param1;
         this.var_1433 = param2;
         this.var_2949 = param3;
         this.var_2951 = param4;
         this._category = param5;
         this.var_2196 = param6;
         this.var_1463 = param7;
         this.var_2952 = param8;
         this.var_2953 = param9;
         this.var_2948 = param10;
         this.var_2947 = param11;
         this.var_2950 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2321;
      }
      
      public function get itemType() : String
      {
         return this.var_1433;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2949;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2951;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2196;
      }
      
      public function get extra() : int
      {
         return this.var_1463;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2952;
      }
      
      public function get creationDay() : int
      {
         return this.var_2953;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2948;
      }
      
      public function get creationYear() : int
      {
         return this.var_2947;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2950;
      }
      
      public function get songID() : int
      {
         return this.var_1463;
      }
   }
}
