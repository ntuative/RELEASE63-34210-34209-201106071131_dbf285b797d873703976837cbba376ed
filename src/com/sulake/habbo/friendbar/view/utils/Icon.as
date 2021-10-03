package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2255:int = 0;
      
      protected static const const_656:int = 1;
      
      protected static const const_1978:int = 2;
      
      protected static const const_1977:int = 3;
      
      protected static const const_127:int = 4;
      
      protected static const const_655:int = 8;
      
      protected static const const_276:int = 18;
      
      protected static const const_1979:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1684:Boolean = false;
      
      protected var var_48:BitmapDataAsset;
      
      protected var var_97:IBitmapWrapperWindow;
      
      private var var_1136:uint;
      
      protected var var_215:Timer;
      
      protected var _frame:int = 0;
      
      private var var_594:Point;
      
      protected var var_898:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1136 = const_656 | const_655;
         this.var_594 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1684;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_48 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_48;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_97 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_97;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1136 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1136;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_898 = param1;
         if(this.var_898 && this.var_1684)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1684 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_97 && !this.var_97.disposed)
         {
            if(!this.var_97.bitmap)
            {
               this.var_97.bitmap = new BitmapData(this.var_97.width,this.var_97.height,true,0);
            }
            else
            {
               this.var_97.bitmap.fillRect(this.var_97.bitmap.rect,0);
            }
            if(this.var_48 && !this.var_48.disposed)
            {
               this.var_594.x = this.var_594.y = 0;
               _loc1_ = this.var_48.content as BitmapData;
               switch(this.var_1136 & const_1977)
               {
                  case const_656:
                     this.var_594.x = this.var_97.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1978:
                     this.var_594.x = this.var_97.bitmap.width - _loc1_.width;
               }
               switch(this.var_1136 & const_1979)
               {
                  case const_655:
                     this.var_594.y = this.var_97.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_276:
                     this.var_594.y = this.var_97.bitmap.height - _loc1_.height;
               }
               this.var_97.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_594);
               this.var_97.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_215)
            {
               this.var_215 = new Timer(param2,0);
               this.var_215.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_215.start();
               this.onTimerEvent(null);
            }
            this.var_215.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_215)
            {
               this.var_215.reset();
               this.var_215.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_215 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
