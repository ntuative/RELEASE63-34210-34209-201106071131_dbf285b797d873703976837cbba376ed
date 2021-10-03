package com.sulake.habbo.ui.widget.memenu
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetGetEffectsMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetOpenInventoryMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetSelectEffectMessage;
   
   public class MeMenuEffectsView implements IMeMenuView
   {
      
      public static const const_1182:Number = 55;
       
      
      private var _widget:MeMenuWidget;
      
      private var _window:IWindowContainer;
      
      private var var_934:Array;
      
      private var _effectsContainer:IWindowContainer;
      
      public function MeMenuEffectsView()
      {
         super();
      }
      
      public function get widget() : MeMenuWidget
      {
         return this._widget;
      }
      
      public function get effectsContainer() : IWindowContainer
      {
         return this._effectsContainer;
      }
      
      public function init(param1:MeMenuWidget, param2:String) : void
      {
         this._widget = param1;
         this.var_934 = new Array();
         this.createWindow(param2);
      }
      
      public function dispose() : void
      {
         this.disposeEffects();
         this.var_934 = null;
         this._widget = null;
         this._effectsContainer = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function updateEffects(param1:Array) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = null;
         this.disposeEffects();
         this.showInfoText(param1.length == 0);
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc6_ = new EffectView();
            _loc6_.init(this,"active_effect_" + _loc2_,_loc3_);
            this.var_934.push(_loc6_);
            _loc6_.window.y = _loc2_ * const_1182;
            _loc2_++;
         }
         _loc4_ = this._effectsContainer.height;
         _loc5_ = this.var_934.length * const_1182;
         this._effectsContainer.height = Math.max(_loc5_,50);
         this._window.height += this._effectsContainer.height - _loc4_;
         this._widget.updateSize();
         return false;
      }
      
      private function showInfoText(param1:Boolean) : void
      {
         if(this._window == null)
         {
            return;
         }
         var _loc2_:ITextWindow = this._window.findChildByName("info_text") as ITextWindow;
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function selectEffect(param1:EffectView) : void
      {
         if(param1.effect.isInUse)
         {
            this._widget.messageListener.processWidgetMessage(new RoomWidgetSelectEffectMessage(RoomWidgetSelectEffectMessage.const_886,param1.effect.type));
         }
         else
         {
            this._widget.messageListener.processWidgetMessage(new RoomWidgetSelectEffectMessage(RoomWidgetSelectEffectMessage.const_904,param1.effect.type));
         }
      }
      
      private function disposeEffects() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_934)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         this.var_934 = [];
      }
      
      private function createWindow(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:XmlAsset = this._widget.assets.getAssetByName("memenu_effects") as XmlAsset;
         if(_loc2_)
         {
            this._window = this._widget.windowManager.buildFromXML(_loc2_.content as XML) as IWindowContainer;
         }
         if(this._window == null)
         {
            throw new Error("Failed to construct effects window from XML!");
         }
         this._window.name = param1;
         var _loc4_:int = 0;
         while(_loc4_ < this._window.numChildren)
         {
            _loc3_ = this._window.getChildAt(_loc4_);
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClicked);
            _loc4_++;
         }
         this._effectsContainer = this._window.findChildByName("effects_cnvs") as IWindowContainer;
         this._widget.messageListener.processWidgetMessage(new RoomWidgetGetEffectsMessage());
      }
      
      private function onButtonClicked(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case "back_btn":
               this._widget.changeView(MeMenuWidget.const_152);
               break;
            case "moreEffects_btn":
               this._widget.messageListener.processWidgetMessage(new RoomWidgetOpenInventoryMessage(RoomWidgetOpenInventoryMessage.const_1210));
               break;
            case "hideEffects_btn":
               this._widget.messageListener.processWidgetMessage(new RoomWidgetSelectEffectMessage(RoomWidgetSelectEffectMessage.const_725));
               break;
            default:
               Logger.log("Me Menu Effects View: unknown button: " + _loc3_);
         }
      }
   }
}
