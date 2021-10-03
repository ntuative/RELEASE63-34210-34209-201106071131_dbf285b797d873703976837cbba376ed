package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class TwinkleImages implements IDisposable
   {
      
      private static const const_1562:int = 6;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _images:Dictionary;
      
      public function TwinkleImages(param1:HabboQuestEngine)
      {
         this._images = new Dictionary();
         super();
         this._questEngine = param1;
         var _loc2_:int = 1;
         while(_loc2_ <= const_1562)
         {
            this.loadImage(_loc2_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this._questEngine = null;
         if(this._images)
         {
            for each(_loc1_ in this._images)
            {
               _loc1_.dispose();
            }
            this._images = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      private function loadImage(param1:int) : void
      {
         PendingImage.retrievePreviewAsset(this._questEngine,"ach_twinkle" + param1,this.onImageReady);
      }
      
      public function getImage(param1:int) : BitmapData
      {
         return this._images["ach_twinkle" + param1];
      }
      
      private function onImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = _loc2_.assetName;
         if(!_loc3_ || !this._questEngine.assets)
         {
            return;
         }
         var _loc4_:BitmapDataAsset = this._questEngine.assets.getAssetByName(_loc3_) as BitmapDataAsset;
         if(_loc4_ == null)
         {
            return;
         }
         Logger.log("GOT TWINKLE ASSET: " + _loc3_);
         this._images[_loc3_] = BitmapData(_loc4_.content);
      }
   }
}
