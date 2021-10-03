package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1181:int = 0;
       
      
      private var var_472:BitmapData = null;
      
      private var var_2259:String = "";
      
      private var var_323:Boolean = true;
      
      private var var_2252:String = "";
      
      private var var_2255:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1978:String;
      
      private var var_1627:Boolean = false;
      
      private var var_1628:Boolean = false;
      
      private var _offset:Point;
      
      private var var_265:int = 0;
      
      private var _height:int = 0;
      
      private var var_1164:Number = 0;
      
      private var var_2724:Boolean = false;
      
      private var var_2722:Boolean = true;
      
      private var var_2723:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2426:int = 0;
      
      private var var_2725:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1978 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2426 = var_1181++;
      }
      
      public function dispose() : void
      {
         this.var_472 = null;
         this.var_265 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_472;
      }
      
      public function get assetName() : String
      {
         return this.var_2259;
      }
      
      public function get visible() : Boolean
      {
         return this.var_323;
      }
      
      public function get tag() : String
      {
         return this.var_2252;
      }
      
      public function get alpha() : int
      {
         return this.var_2255;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1978;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1628;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1627;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_265;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1164;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2724;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2722;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2723;
      }
      
      public function get instanceId() : int
      {
         return this.var_2426;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2725;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_265 = param1.width;
            this._height = param1.height;
         }
         this.var_472 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2259 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_323 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2252 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2255 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1978 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2725 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1627 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1628 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1164 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2724 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2722 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2723 = param1;
         ++this._updateID;
      }
   }
}
