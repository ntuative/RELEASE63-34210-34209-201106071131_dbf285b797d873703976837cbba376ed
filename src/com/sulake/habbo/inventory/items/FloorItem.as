package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2196:String;
      
      protected var var_1463:Number;
      
      protected var var_2976:Boolean;
      
      protected var var_2974:Boolean;
      
      protected var var_2950:Boolean;
      
      protected var var_2339:Boolean;
      
      protected var var_2975:int;
      
      protected var var_2953:int;
      
      protected var var_2948:int;
      
      protected var var_2947:int;
      
      protected var var_1901:String;
      
      protected var var_1903:int;
      
      protected var var_1021:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2950 = param5;
         this.var_2974 = param6;
         this.var_2976 = param7;
         this.var_2339 = param8;
         this.var_2196 = param9;
         this.var_1463 = param10;
         this.var_2975 = param11;
         this.var_2953 = param12;
         this.var_2948 = param13;
         this.var_2947 = param14;
         this.var_1901 = param15;
         this.var_1903 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2196;
      }
      
      public function get extra() : Number
      {
         return this.var_1463;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2976;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2974;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2950;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2339;
      }
      
      public function get expires() : int
      {
         return this.var_2975;
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
      
      public function get slotId() : String
      {
         return this.var_1901;
      }
      
      public function get songId() : int
      {
         return this.var_1903;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1021 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1021;
      }
   }
}
