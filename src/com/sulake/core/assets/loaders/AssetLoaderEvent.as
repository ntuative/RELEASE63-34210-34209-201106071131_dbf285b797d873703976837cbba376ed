package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_30:String = "AssetLoaderEventComplete";
      
      public static const const_1217:String = "AssetLoaderEventProgress";
      
      public static const const_1360:String = "AssetLoaderEventUnload";
      
      public static const const_1275:String = "AssetLoaderEventStatus";
      
      public static const const_42:String = "AssetLoaderEventError";
      
      public static const const_1159:String = "AssetLoaderEventOpen";
       
      
      private var var_416:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_416 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_416;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_416);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
