package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_74:String = "s";
      
      public static const const_187:String = "e";
       
      
      private var var_1488:String;
      
      private var var_2890:int;
      
      private var var_1217:String;
      
      private var var_1489:int;
      
      private var var_1847:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1488 = param1.readString();
         this.var_2890 = param1.readInteger();
         this.var_1217 = param1.readString();
         this.var_1489 = param1.readInteger();
         this.var_1847 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1488;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2890;
      }
      
      public function get extraParam() : String
      {
         return this.var_1217;
      }
      
      public function get productCount() : int
      {
         return this.var_1489;
      }
      
      public function get expiration() : int
      {
         return this.var_1847;
      }
   }
}
