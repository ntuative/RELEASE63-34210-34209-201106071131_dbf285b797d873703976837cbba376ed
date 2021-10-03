package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1334:int;
      
      private var var_310:String;
      
      private var var_2062:int;
      
      private var var_2418:int;
      
      private var var_1788:int;
      
      private var var_2061:int;
      
      private var var_2063:Boolean;
      
      private var _category:String;
      
      private var var_2833:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1334 = param1.readInteger();
         this.var_310 = param1.readString();
         this.var_2062 = Math.max(1,param1.readInteger());
         this.var_2418 = param1.readInteger();
         this.var_1788 = param1.readInteger();
         this.var_2061 = param1.readInteger();
         this.var_2063 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2833 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_310;
      }
      
      public function get level() : int
      {
         return this.var_1334;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2062;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2418;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1788;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2061;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2063;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2833;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1334 > 1 || this.var_2063;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2061 = this.var_2062;
      }
   }
}
