package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2259:String;
      
      private var var_2261:String;
      
      private var var_472:BitmapDataAsset;
      
      private var var_1627:Boolean;
      
      private var var_1628:Boolean;
      
      private var var_2260:Boolean;
      
      private var _offsetX:int;
      
      private var var_1137:int;
      
      private var var_265:int;
      
      private var _height:int;
      
      private var var_801:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2259 = param1;
         this.var_2261 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_472 = _loc9_;
            this.var_801 = false;
         }
         else
         {
            this.var_472 = null;
            this.var_801 = true;
         }
         this.var_1627 = param4;
         this.var_1628 = param5;
         this._offsetX = param6;
         this.var_1137 = param7;
         this.var_2260 = param8;
      }
      
      public function dispose() : void
      {
         this.var_472 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_801 && this.var_472 != null)
         {
            _loc1_ = this.var_472.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_265 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_801 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1628;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1627;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_265;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2259;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2261;
      }
      
      public function get asset() : IAsset
      {
         return this.var_472;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2260;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1627)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1628)
         {
            return this.var_1137;
         }
         return -(this.height + this.var_1137);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1137;
      }
   }
}
