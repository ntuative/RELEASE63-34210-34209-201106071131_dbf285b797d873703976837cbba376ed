package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import flash.geom.Point;
   
   public class QuestDetails implements IDisposable
   {
      
      private static const const_1458:int = 56;
      
      private static const const_700:int = 5;
      
      private static const const_1641:int = 5;
      
      private static const const_1642:int = 30;
      
      private static const const_1103:Point = new Point(8,8);
      
      private static const const_1643:Array = ["PLACE_ITEM","PLACE_FLOOR","PLACE_WALLPAPER"];
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_2093:Boolean;
      
      private var var_123:QuestMessageData;
      
      public function QuestDetails(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_123 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         if(this.var_2093)
         {
            this.var_2093 = false;
            this.showDetails(param1);
         }
         else if(this.var_123 == null || this.var_123.id != param1.id)
         {
            this.close();
         }
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.close();
      }
      
      public function onQuestCancelled() : void
      {
         this.close();
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function showDetails(param1:QuestMessageData) : void
      {
         if(this._window && this._window.visible)
         {
            this._window.visible = false;
            return;
         }
         this.openDetails(param1);
      }
      
      private function openDetails(param1:QuestMessageData) : void
      {
         var _loc9_:* = null;
         this.var_123 = param1;
         if(param1 == null)
         {
            return;
         }
         if(this._window == null)
         {
            this._window = IFrameWindow(this._questEngine.getXmlWindow("QuestDetails"));
            this._window.findChildByTag("close").procedure = this.onDetailsWindowClose;
            this._window.center();
            _loc9_ = this._questEngine.questController.method_3.createListEntry();
            _loc9_.x = const_1103.x;
            _loc9_.y = const_1103.y;
            this._window.content.addChild(_loc9_);
            this._window.findChildByName("catalog_link_region").procedure = this.onCatalogLink;
         }
         _loc9_ = IWindowContainer(this._window.findChildByName("entry_container"));
         this._questEngine.questController.method_3.refreshEntryDetails(_loc9_,param1);
         var _loc2_:ITextWindow = ITextWindow(_loc9_.findChildByName("hint_txt"));
         var _loc3_:int = _loc2_.height;
         _loc2_.caption = this._questEngine.getQuestHint(param1);
         _loc2_.height = _loc2_.textHeight + const_1641;
         var _loc4_:int = _loc2_.height - _loc3_ + (!!_loc2_.visible ? 0 : const_1642);
         _loc2_.visible = true;
         var _loc5_:IRegionWindow = IRegionWindow(this._window.findChildByName("catalog_link_region"));
         var _loc6_:* = const_1643.indexOf(param1.type) > -1;
         _loc5_.y = _loc2_.y + _loc2_.height + const_700;
         var _loc7_:int = 0;
         if(_loc6_ && !_loc5_.visible)
         {
            _loc7_ = const_700 + _loc5_.height;
         }
         if(!_loc6_ && _loc5_.visible)
         {
            _loc7_ = -const_700 - _loc5_.height;
         }
         _loc5_.visible = _loc6_;
         var _loc8_:IWindowContainer = IWindowContainer(_loc9_.findChildByName("quest_container"));
         _loc8_.height += _loc4_ + _loc7_;
         this._questEngine.questController.method_3.setEntryHeight(_loc9_);
         this._window.height = _loc9_.height + const_1458;
         this._window.visible = true;
         this._window.activate();
      }
      
      private function onDetailsWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._window.visible = false;
         }
      }
      
      public function set openForNextQuest(param1:Boolean) : void
      {
         this.var_2093 = param1;
      }
      
      private function onCatalogLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.openCatalog(this.var_123);
         }
      }
   }
}
