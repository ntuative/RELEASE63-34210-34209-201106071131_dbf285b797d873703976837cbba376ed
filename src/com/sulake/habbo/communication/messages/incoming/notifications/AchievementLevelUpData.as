package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1334:int;
      
      private var var_2071:int;
      
      private var var_2418:int;
      
      private var var_1788:int;
      
      private var var_1458:int;
      
      private var var_310:int;
      
      private var var_2520:String = "";
      
      private var var_2521:String = "";
      
      private var var_2522:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1334 = param1.readInteger();
         this.var_310 = param1.readInteger();
         this.var_2520 = param1.readString();
         this.var_2071 = param1.readInteger();
         this.var_2418 = param1.readInteger();
         this.var_1788 = param1.readInteger();
         this.var_1458 = param1.readInteger();
         this.var_2522 = param1.readInteger();
         this.var_2521 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1334;
      }
      
      public function get points() : int
      {
         return this.var_2071;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2418;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1788;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1458;
      }
      
      public function get badgeId() : int
      {
         return this.var_310;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2520;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2521;
      }
      
      public function get achievementID() : int
      {
         return this.var_2522;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
