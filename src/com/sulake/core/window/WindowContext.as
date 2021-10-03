package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_611:uint = 0;
      
      public static const const_1836:uint = 1;
      
      public static const const_2155:int = 0;
      
      public static const const_2068:int = 1;
      
      public static const const_2125:int = 2;
      
      public static const const_2061:int = 3;
      
      public static const const_1814:int = 4;
      
      public static const const_435:int = 5;
      
      public static var var_413:IEventQueue;
      
      private static var var_613:IEventProcessor;
      
      private static var var_1746:uint = const_611;
      
      private static var stage:Stage;
      
      private static var var_173:IWindowRenderer;
       
      
      private var var_2355:EventProcessorState;
      
      private var var_2356:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_139:DisplayObjectContainer;
      
      protected var var_3027:Boolean = true;
      
      protected var var_1385:Error;
      
      protected var var_2192:int = -1;
      
      protected var var_1384:IInternalWindowServices;
      
      protected var var_1666:IWindowParser;
      
      protected var var_2973:IWindowFactory;
      
      protected var var_92:IDesktopWindow;
      
      protected var var_1667:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_584:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_173 = param2;
         this._localization = param4;
         this.var_139 = param5;
         this.var_1384 = new ServiceManager(this,param5);
         this.var_2973 = param3;
         this.var_1666 = new WindowParser(this);
         this.var_2356 = param7;
         if(!stage)
         {
            if(this.var_139 is Stage)
            {
               stage = this.var_139 as Stage;
            }
            else if(this.var_139.stage)
            {
               stage = this.var_139.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_92 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_92.limits.maxWidth = param6.width;
         this.var_92.limits.maxHeight = param6.height;
         this.var_139.addChild(this.var_92.getDisplayObject());
         this.var_139.doubleClickEnabled = true;
         this.var_139.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2355 = new EventProcessorState(var_173,this.var_92,this.var_92,null,this.var_2356);
         inputMode = const_611;
         this.var_1667 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1746;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_413)
         {
            if(var_413 is IDisposable)
            {
               IDisposable(var_413).dispose();
            }
         }
         if(var_613)
         {
            if(var_613 is IDisposable)
            {
               IDisposable(var_613).dispose();
            }
         }
         switch(value)
         {
            case const_611:
               var_413 = new MouseEventQueue(stage);
               var_613 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1836:
               var_413 = new TabletEventQueue(stage);
               var_613 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_611;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_139.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_139.removeChild(IGraphicContextHost(this.var_92).getGraphicContext(true) as DisplayObject);
            this.var_92.destroy();
            this.var_92 = null;
            this.var_1667.destroy();
            this.var_1667 = null;
            if(this.var_1384 is IDisposable)
            {
               IDisposable(this.var_1384).dispose();
            }
            this.var_1384 = null;
            this.var_1666.dispose();
            this.var_1666 = null;
            var_173 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1385;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2192;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1385 = param2;
         this.var_2192 = param1;
         if(this.var_3027)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1385 = null;
         this.var_2192 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1384;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1666;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2973;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_92;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_92.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1814,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1667;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_92,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_92)
         {
            this.var_92 = null;
         }
         if(param1.state != WindowState.const_565)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_173.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_584 = true;
         if(this.var_1385)
         {
            throw this.var_1385;
         }
         var_613.process(this.var_2355,var_413);
         this.var_584 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2354 = true;
         var_173.update(param1);
         this.var_2354 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_92 != null && !this.var_92.disposed)
         {
            if(this.var_139 is Stage)
            {
               this.var_92.limits.maxWidth = Stage(this.var_139).stageWidth;
               this.var_92.limits.maxHeight = Stage(this.var_139).stageHeight;
               this.var_92.width = Stage(this.var_139).stageWidth;
               this.var_92.height = Stage(this.var_139).stageHeight;
            }
            else
            {
               this.var_92.limits.maxWidth = this.var_139.width;
               this.var_92.limits.maxHeight = this.var_139.height;
               this.var_92.width = this.var_139.width;
               this.var_92.height = this.var_139.height;
            }
         }
      }
   }
}
