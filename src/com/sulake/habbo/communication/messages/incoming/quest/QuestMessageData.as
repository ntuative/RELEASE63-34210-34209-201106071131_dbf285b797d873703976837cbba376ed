package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1970:String;
      
      private var var_1972:int;
      
      private var var_1971:int;
      
      private var var_1990:int;
      
      private var _id:int;
      
      private var var_1973:Boolean;
      
      private var _type:String;
      
      private var var_1974:String;
      
      private var var_1975:int;
      
      private var _localizationCode:String;
      
      private var var_2720:int;
      
      private var var_2719:int;
      
      private var var_2718:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1970 = param1.readString();
         this.var_1972 = param1.readInteger();
         this.var_1971 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1973 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1974 = param1.readString();
         this.var_1975 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2720 = param1.readInteger();
         this.var_2719 = param1.readInteger();
         this.var_2718 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1974 = "";
         this.var_1975 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1970;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1972;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1971;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1973;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1974;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1975;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2720;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2719;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2718;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1970;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1973 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1972 >= this.var_1971;
      }
   }
}
