package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_991:int;
      
      private var var_756:Boolean;
      
      private var var_1689:Boolean;
      
      private var var_655:String;
      
      private var var_1592:int;
      
      private var var_1690:String;
      
      private var var_1688:String;
      
      private var var_1687:String;
      
      private var var_2474:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_991 = param1.readInteger();
         this.var_756 = param1.readBoolean();
         this.var_1689 = param1.readBoolean();
         this.var_655 = param1.readString();
         this.var_1592 = param1.readInteger();
         this.var_1690 = param1.readString();
         this.var_1688 = param1.readString();
         this.var_1687 = param1.readString();
         this.var_2474 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1689;
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
      
      public function get facebookId() : String
      {
         return this.var_2474;
      }
   }
}
