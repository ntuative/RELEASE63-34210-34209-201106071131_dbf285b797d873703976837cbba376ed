package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1844:String = "pricing_model_unknown";
      
      public static const const_408:String = "pricing_model_single";
      
      public static const const_438:String = "pricing_model_multi";
      
      public static const const_623:String = "pricing_model_bundle";
      
      public static const const_1949:String = "price_type_none";
      
      public static const const_857:String = "price_type_credits";
      
      public static const const_1377:String = "price_type_activitypoints";
      
      public static const const_1345:String = "price_type_credits_and_activitypoints";
       
      
      private var var_832:String;
      
      private var var_1282:String;
      
      private var var_1204:int;
      
      private var var_1989:String;
      
      private var var_1281:int;
      
      private var var_1280:int;
      
      private var var_1990:int;
      
      private var var_405:ICatalogPage;
      
      private var var_673:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2344:int = 0;
      
      private var var_2740:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1204 = param1;
         this.var_1989 = param2;
         this.var_1281 = param3;
         this.var_1280 = param4;
         this.var_1990 = param5;
         this.var_405 = param8;
         this.var_2344 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2344;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_405;
      }
      
      public function get offerId() : int
      {
         return this.var_1204;
      }
      
      public function get localizationId() : String
      {
         return this.var_1989;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1281;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1280;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_673;
      }
      
      public function get pricingModel() : String
      {
         return this.var_832;
      }
      
      public function get priceType() : String
      {
         return this.var_1282;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2740;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2740 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1204 = 0;
         this.var_1989 = "";
         this.var_1281 = 0;
         this.var_1280 = 0;
         this.var_1990 = 0;
         this.var_405 = null;
         if(this.var_673 != null)
         {
            this.var_673.dispose();
            this.var_673 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_832)
         {
            case const_408:
               this.var_673 = new SingleProductContainer(this,param1);
               break;
            case const_438:
               this.var_673 = new MultiProductContainer(this,param1);
               break;
            case const_623:
               this.var_673 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_832);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_832 = const_408;
            }
            else
            {
               this.var_832 = const_438;
            }
         }
         else if(param1.length > 1)
         {
            this.var_832 = const_623;
         }
         else
         {
            this.var_832 = const_1844;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1281 > 0 && this.var_1280 > 0)
         {
            this.var_1282 = const_1345;
         }
         else if(this.var_1281 > 0)
         {
            this.var_1282 = const_857;
         }
         else if(this.var_1280 > 0)
         {
            this.var_1282 = const_1377;
         }
         else
         {
            this.var_1282 = const_1949;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_405.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_673.products)
         {
            _loc4_ = this.var_405.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
