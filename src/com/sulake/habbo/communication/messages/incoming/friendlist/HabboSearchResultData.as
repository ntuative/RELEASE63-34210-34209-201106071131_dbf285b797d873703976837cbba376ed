package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2294:int;
      
      private var var_1784:String;
      
      private var var_2296:String;
      
      private var var_2298:Boolean;
      
      private var var_2295:Boolean;
      
      private var var_2293:int;
      
      private var var_2297:String;
      
      private var var_2292:String;
      
      private var var_1687:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2294 = param1.readInteger();
         this.var_1784 = param1.readString();
         this.var_2296 = param1.readString();
         this.var_2298 = param1.readBoolean();
         this.var_2295 = param1.readBoolean();
         param1.readString();
         this.var_2293 = param1.readInteger();
         this.var_2297 = param1.readString();
         this.var_2292 = param1.readString();
         this.var_1687 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2294;
      }
      
      public function get avatarName() : String
      {
         return this.var_1784;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2296;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2298;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2295;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2293;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2297;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2292;
      }
      
      public function get realName() : String
      {
         return this.var_1687;
      }
   }
}
