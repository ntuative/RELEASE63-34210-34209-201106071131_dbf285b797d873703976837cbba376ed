package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_947:String = "";
      
      private var var_655:String = "";
      
      private var var_2882:String = "";
      
      private var var_2407:int;
      
      private var var_2476:int = 0;
      
      private var var_2881:String = "";
      
      private var var_2883:int = 0;
      
      private var var_2485:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2407;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_947;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_947 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_655 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2882;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2882 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2476;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2476 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2881;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2881 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2883;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2883 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2485;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2485 = param1;
      }
   }
}
