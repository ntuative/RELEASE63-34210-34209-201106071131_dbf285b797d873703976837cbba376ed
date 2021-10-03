package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_110:int = 1;
      
      public static const const_77:int = 2;
       
      
      private var var_1204:int;
      
      private var _furniId:int;
      
      private var var_2584:int;
      
      private var var_2196:String;
      
      private var var_1678:int;
      
      private var var_2362:int;
      
      private var var_2585:int;
      
      private var var_416:int;
      
      private var var_2586:int = -1;
      
      private var var_1872:int;
      
      private var var_48:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1204 = param1;
         this._furniId = param2;
         this.var_2584 = param3;
         this.var_2196 = param4;
         this.var_1678 = param5;
         this.var_416 = param6;
         this.var_2362 = param7;
         this.var_1872 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.dispose();
            this.var_48 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1204;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2584;
      }
      
      public function get stuffData() : String
      {
         return this.var_2196;
      }
      
      public function get price() : int
      {
         return this.var_1678;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2362;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_48 != null)
         {
            this.var_48.dispose();
         }
         this.var_48 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2585 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2585;
      }
      
      public function get status() : int
      {
         return this.var_416;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2586;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1678 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1204 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1872;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1872 = param1;
      }
   }
}
