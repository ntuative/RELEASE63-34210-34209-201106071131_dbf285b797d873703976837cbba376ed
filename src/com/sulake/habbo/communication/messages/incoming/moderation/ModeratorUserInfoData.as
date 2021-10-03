package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2242:int;
      
      private var var_2240:int;
      
      private var var_756:Boolean;
      
      private var var_2239:int;
      
      private var var_2241:int;
      
      private var var_2243:int;
      
      private var var_2238:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2242 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         this.var_756 = param1.readBoolean();
         this.var_2239 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         this.var_2243 = param1.readInteger();
         this.var_2238 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2242;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2240;
      }
      
      public function get online() : Boolean
      {
         return this.var_756;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2239;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2241;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2243;
      }
      
      public function get banCount() : int
      {
         return this.var_2238;
      }
   }
}
