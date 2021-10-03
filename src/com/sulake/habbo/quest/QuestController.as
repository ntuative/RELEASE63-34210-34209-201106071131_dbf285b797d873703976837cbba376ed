package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_658:QuestsList;
      
      private var _questDetails:QuestDetails;
      
      private var var_659:QuestCompleted;
      
      private var var_378:QuestTracker;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_378 = new QuestTracker(this._questEngine);
         this.var_658 = new QuestsList(this._questEngine);
         this._questDetails = new QuestDetails(this._questEngine);
         this.var_659 = new QuestCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_658.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_658.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_378.onQuest(param1);
         this._questDetails.onQuest(param1);
         this.var_659.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_378.onQuestCompleted(param1);
         this._questDetails.onQuestCompleted(param1);
         this.var_659.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_378.onQuestCancelled();
         this._questDetails.onQuestCancelled();
         this.var_659.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_378.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_658.onRoomExit();
         this.var_378.onRoomExit();
         this._questDetails.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this.var_659.update(param1);
         this.var_378.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_658)
         {
            this.var_658.dispose();
            this.var_658 = null;
         }
         if(this.var_378)
         {
            this.var_378.dispose();
            this.var_378 = null;
         }
         if(this._questDetails)
         {
            this._questDetails.dispose();
            this._questDetails = null;
         }
         if(this.var_659)
         {
            this.var_659.dispose();
            this.var_659 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get method_3() : QuestsList
      {
         return this.var_658;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this._questDetails;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_378;
      }
   }
}
