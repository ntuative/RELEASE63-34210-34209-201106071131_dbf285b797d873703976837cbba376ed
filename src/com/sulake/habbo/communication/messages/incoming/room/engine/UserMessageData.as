package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1170:String = "M";
      
      public static const const_1968:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_181:Number = 0;
      
      private var var_430:int = 0;
      
      private var _name:String = "";
      
      private var var_1670:int = 0;
      
      private var var_947:String = "";
      
      private var var_655:String = "";
      
      private var var_2882:String = "";
      
      private var var_2407:int;
      
      private var var_2476:int = 0;
      
      private var var_2881:String = "";
      
      private var var_2883:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_2880:String = "";
      
      private var var_201:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_201)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_182;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_182 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_181;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_181 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_430;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_430 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_201)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1670;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_1670 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_947;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_947 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_655 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2882;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2882 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2407;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2407 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2476;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2476 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2881;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2881 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2883;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2883 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2485;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2485 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2880;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2880 = param1;
         }
      }
   }
}
