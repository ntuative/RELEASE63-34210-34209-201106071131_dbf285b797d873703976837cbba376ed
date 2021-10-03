package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1250:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_991:int;
      
      private var var_756:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var var_655:String;
      
      private var var_1592:int;
      
      private var var_1690:String;
      
      private var var_1688:String;
      
      private var var_1687:String;
      
      private var var_1074:Vector.<FriendNotification>;
      
      private var var_2620:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1687 = param3;
         this.var_1690 = param4;
         this.var_991 = param5;
         this.var_756 = param6;
         this._allowFollow = param7;
         this.var_655 = param8;
         this.var_1592 = param9;
         this.var_1688 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_991;
      }
      
      public function get online() : Boolean
      {
         return this.var_756;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function get categoryId() : int
      {
         return this.var_1592;
      }
      
      public function get motto() : String
      {
         return this.var_1690;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1688;
      }
      
      public function get realName() : String
      {
         return this.var_1687;
      }
      
      public function get logEventId() : int
      {
         return this.var_2620;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1074)
         {
            this.var_1074 = new Vector.<FriendNotification>();
         }
         return this.var_1074;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_991 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_756 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_655 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1592 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1690 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1688 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1687 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2620 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1250;
      }
   }
}
