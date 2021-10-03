package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1204:int;
      
      private var var_1989:String;
      
      private var var_1281:int;
      
      private var var_1280:int;
      
      private var var_1990:int;
      
      private var var_2344:int;
      
      private var var_1186:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1204 = param1.readInteger();
         this.var_1989 = param1.readString();
         this.var_1281 = param1.readInteger();
         this.var_1280 = param1.readInteger();
         this.var_1990 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1186 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1186.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2344 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1186;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1990;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2344;
      }
   }
}
