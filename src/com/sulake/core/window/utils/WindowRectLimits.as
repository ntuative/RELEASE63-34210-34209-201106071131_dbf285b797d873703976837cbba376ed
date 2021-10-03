package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_320:int = -2.147483648E9;
      
      private var var_317:int = 2.147483647E9;
      
      private var var_318:int = -2.147483648E9;
      
      private var var_319:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_320;
      }
      
      public function get maxWidth() : int
      {
         return this.var_317;
      }
      
      public function get minHeight() : int
      {
         return this.var_318;
      }
      
      public function get maxHeight() : int
      {
         return this.var_319;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_320 = param1;
         if(this.var_320 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_320)
         {
            this._target.width = this.var_320;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_317 = param1;
         if(this.var_317 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_317)
         {
            this._target.width = this.var_317;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_318 = param1;
         if(this.var_318 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_318)
         {
            this._target.height = this.var_318;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_319 = param1;
         if(this.var_319 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_319)
         {
            this._target.height = this.var_319;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_320 == int.MIN_VALUE && this.var_317 == int.MAX_VALUE && this.var_318 == int.MIN_VALUE && this.var_319 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_320 = int.MIN_VALUE;
         this.var_317 = int.MAX_VALUE;
         this.var_318 = int.MIN_VALUE;
         this.var_319 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_320)
            {
               this._target.width = this.var_320;
            }
            else if(this._target.width > this.var_317)
            {
               this._target.width = this.var_317;
            }
            if(this._target.height < this.var_318)
            {
               this._target.height = this.var_318;
            }
            else if(this._target.height > this.var_319)
            {
               this._target.height = this.var_319;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_320 = param1;
         this.var_317 = param2;
         this.var_318 = param3;
         this.var_319 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_320 = this.var_320;
         _loc2_.var_317 = this.var_317;
         _loc2_.var_318 = this.var_318;
         _loc2_.var_319 = this.var_319;
         return _loc2_;
      }
   }
}
