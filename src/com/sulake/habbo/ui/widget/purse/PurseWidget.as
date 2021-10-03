package com.sulake.habbo.ui.widget.purse
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetGetPurseData;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetOpenCatalogMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class PurseWidget extends RoomWidgetBase
   {
       
      
      private var _view:IWindowContainer;
      
      private var var_1763:int;
      
      private var var_1764:int;
      
      private const const_2006:int = 3;
      
      private const const_2274:uint = 4.291993382E9;
      
      private const const_2275:uint = 4.29080704E9;
      
      private const const_2277:uint = 4.285767869E9;
      
      private const const_2276:uint = 4.28366404E9;
      
      public function PurseWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         super(param1,param2,param3,param4);
         var _loc5_:XmlAsset = param3.getAssetByName("purse_widget") as XmlAsset;
         if(_loc5_)
         {
            this._view = param2.buildFromXML(_loc5_.content as XML,1) as IWindowContainer;
            _loc6_ = this._view.desktop;
            this._view.x = _loc6_.width - this._view.width - this.const_2006;
            this._view.y = this.const_2006;
            this._view.visible = false;
            this._view.findChildByName("credits_container").addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCreditsClick);
            this._view.findChildByName("pixels_container").addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPixelsClick);
            _loc7_ = [];
            this._view.groupChildrenWithTag("ORANGE",_loc7_,true);
            for each(_loc8_ in _loc7_)
            {
               _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onOrangeMouseOver);
               _loc8_.addEventListener(WindowMouseEvent.const_25,this.onOrangeMouseOut);
            }
            _loc7_ = [];
            this._view.groupChildrenWithTag("BLUE",_loc7_,true);
            for each(_loc8_ in _loc7_)
            {
               _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onBlueMouseOver);
               _loc8_.addEventListener(WindowMouseEvent.const_25,this.onBlueMouseOut);
            }
         }
      }
      
      override public function initialize(param1:int = 0) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetGetPurseData());
         if(this._view)
         {
            this._view.visible = true;
         }
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_75,this.onCreditBalance);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_116,this.onPixelBalance);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_75,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_116,this.onPixelBalance);
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         this.var_1763 = param1.balance;
         if(this._view)
         {
            this._view.findChildByName("credits").caption = this.var_1763.toString();
            this._view.findChildByName("credits_shadow").caption = this.var_1763.toString();
         }
      }
      
      private function onPixelBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         this.var_1764 = param1.balance;
         if(this._view)
         {
            this._view.findChildByName("pixels").caption = this.var_1764.toString();
            this._view.findChildByName("pixels_shadow").caption = this.var_1764.toString();
         }
      }
      
      private function onCreditsClick(param1:WindowMouseEvent) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetOpenCatalogMessage(RoomWidgetOpenCatalogMessage.const_1367));
      }
      
      private function onPixelsClick(param1:WindowMouseEvent) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetOpenCatalogMessage(RoomWidgetOpenCatalogMessage.const_1221));
      }
      
      private function onOrangeMouseOver(param1:WindowMouseEvent) : void
      {
         param1.window.color = this.const_2275;
      }
      
      private function onOrangeMouseOut(param1:WindowMouseEvent) : void
      {
         param1.window.color = this.const_2274;
      }
      
      private function onBlueMouseOver(param1:WindowMouseEvent) : void
      {
         param1.window.color = this.const_2276;
      }
      
      private function onBlueMouseOut(param1:WindowMouseEvent) : void
      {
         param1.window.color = this.const_2277;
      }
   }
}
