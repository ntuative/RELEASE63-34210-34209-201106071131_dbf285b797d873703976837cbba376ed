package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2866:String;
      
      private var var_2867:Class;
      
      private var var_2865:Class;
      
      private var var_2083:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2866 = param1;
         this.var_2867 = param2;
         this.var_2865 = param3;
         if(rest == null)
         {
            this.var_2083 = new Array();
         }
         else
         {
            this.var_2083 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2866;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2867;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2865;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2083;
      }
   }
}
