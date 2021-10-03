package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2236:int = 16777215;
      
      public static const const_1273:int = 8191;
      
      public static const const_1338:int = 8191;
      
      public static const const_2067:int = 1;
      
      public static const const_1264:int = 1;
      
      public static const const_1323:int = 1;
      
      private static var var_543:uint = 0;
      
      private static var var_542:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1273)
         {
            param2 = const_1273;
         }
         else if(param2 < const_1264)
         {
            param2 = const_1264;
         }
         if(param3 > const_1338)
         {
            param3 = const_1338;
         }
         else if(param3 < const_1323)
         {
            param3 = const_1323;
         }
         super(param2,param3,param4,param5);
         ++var_543;
         var_542 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_543;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_542;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_542 -= width * height * 4;
            --var_543;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
