package com.sulake.core.window.graphics.renderer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.utils.IBitmapDataContainer;
   import flash.display.BitmapData;
   import flash.display.IBitmapDrawable;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class BitmapDataRenderer extends SkinRenderer
   {
       
      
      private var var_1125:Matrix;
      
      private var var_735:ColorTransform;
      
      public function BitmapDataRenderer(param1:String)
      {
         super(param1);
         this.var_1125 = new Matrix();
         this.var_735 = new ColorTransform();
      }
      
      override public function draw(param1:IWindow, param2:IBitmapDrawable, param3:Rectangle, param4:uint, param5:Boolean) : void
      {
         var _loc6_:BitmapData = IBitmapDataContainer(param1).bitmapData;
         var _loc7_:BitmapData = BitmapData(param2);
         if(param2 != null && _loc6_ != null)
         {
            this.var_1125.a = param1.width / _loc6_.width;
            this.var_1125.d = param1.height / _loc6_.height;
            this.var_735.redMultiplier = ((param1.color & 16711680) >> 16) / 255;
            this.var_735.greenMultiplier = ((param1.color & 65280) >> 8) / 255;
            this.var_735.blueMultiplier = (param1.color & 255) / 255;
            _loc7_.lock();
            _loc7_.draw(_loc6_,this.var_1125,this.var_735,null,null,false);
            _loc7_.unlock();
         }
      }
      
      override public function isStateDrawable(param1:uint) : Boolean
      {
         return param1 == 0;
      }
   }
}
