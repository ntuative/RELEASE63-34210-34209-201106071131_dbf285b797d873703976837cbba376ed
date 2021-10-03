package com.sulake.habbo.ui.widget.furniture.teaser
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import flash.net.URLRequest;
   
   public class ImageDownloader implements IDisposable
   {
       
      
      private var _widget:TeaserFurniWidget;
      
      private var _assets:IAssetLibrary;
      
      private var var_186:String;
      
      private var var_2783:String;
      
      private var var_2782:String;
      
      private var var_45:AssetLoaderStruct;
      
      private var _disposed:Boolean;
      
      public function ImageDownloader(param1:TeaserFurniWidget, param2:IAssetLibrary, param3:String, param4:String, param5:String, param6:String)
      {
         super();
         this._widget = param1;
         this._assets = param2;
         this.var_186 = param3;
         this.var_2783 = param5;
         this.var_2782 = param6;
         this.downloadImage(param4,param5);
      }
      
      public function dispose() : void
      {
         this._widget = null;
         this._assets = null;
         if(this.var_45)
         {
            this.var_45.removeEventListener(AssetLoaderEvent.const_30,this.onImageReady);
         }
         this.var_45 = null;
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get campaignID() : String
      {
         return this.var_186;
      }
      
      public function get imageName() : String
      {
         return this.var_2783;
      }
      
      public function get viewElementID() : String
      {
         return this.var_2782;
      }
      
      public function downloadImage(param1:String, param2:String) : void
      {
         var _loc3_:URLRequest = new URLRequest(param1 + "" + param2);
         if(_loc3_ != null)
         {
            this.var_45 = this._assets.loadAssetFromFile(param2,_loc3_,"image/png");
            this.var_45.addEventListener(AssetLoaderEvent.const_30,this.onImageReady);
         }
      }
      
      private function onImageReady(param1:AssetLoaderEvent) : void
      {
         if(this._widget != null)
         {
            this._widget.onDecoImageReady(this);
         }
         if(this.var_45)
         {
            this.var_45.removeEventListener(AssetLoaderEvent.const_30,this.onImageReady);
         }
         this.var_45 = null;
      }
   }
}
