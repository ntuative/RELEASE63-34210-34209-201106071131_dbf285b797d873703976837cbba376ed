package com.sulake.habbo.inventory.badges
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class Badge implements IThumbListDrawableItem
   {
      
      private static const const_1444:int = 13421772;
      
      private static const const_1445:int = 10275685;
       
      
      private var _type:String;
      
      private var var_1782:Boolean;
      
      private var _isSelected:Boolean;
      
      private var var_48:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_1483:IWindow;
      
      private var var_2429:IWindow;
      
      private var var_1593:Boolean;
      
      public function Badge(param1:String, param2:IWindowContainer, param3:Boolean)
      {
         this.var_48 = new BitmapData(1,1,false,4278255360);
         super();
         this._type = param1;
         this._window = param2;
         this.var_1483 = this._window.findChildByTag("BG_COLOR");
         this.var_2429 = this._window.findChildByName("outline");
         this.var_1593 = param3;
         this.isSelected = false;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1782;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_48;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1782 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         if(this.var_1483 == null)
         {
            return;
         }
         this.var_1483.color = !!this.var_1593 ? uint(const_1445) : uint(const_1444);
         this.var_2429.visible = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_48 = param1;
         if(this.var_48 == null)
         {
            return;
         }
         if(this._window == null)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:BitmapData = !!_loc2_.bitmap ? _loc2_.bitmap : new BitmapData(_loc2_.width,_loc2_.height);
         _loc3_.fillRect(_loc3_.rect,0);
         _loc3_.copyPixels(param1,param1.rect,new Point(_loc3_.width / 2 - param1.width / 2,_loc3_.height / 2 - param1.height / 2));
         _loc2_.bitmap = _loc3_;
      }
      
      public function set isUnseen(param1:Boolean) : void
      {
         if(this.var_1593 != param1)
         {
            this.var_1593 = param1;
            this.isSelected = this._isSelected;
         }
      }
   }
}
