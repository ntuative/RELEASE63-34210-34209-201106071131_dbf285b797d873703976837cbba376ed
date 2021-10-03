package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_571:TextField;
      
      private var var_1092:TextFormat;
      
      private var var_3023:String = "...";
      
      private var var_3022:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_571 = new TextField();
         this.var_571.autoSize = TextFieldAutoSize.LEFT;
         this.var_1092 = this.var_571.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_571 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_1092.font = param1.fontFace;
         this.var_1092.size = param1.fontSize;
         this.var_1092.bold = param1.bold;
         this.var_1092.italic = param1.italic;
         this.var_571.setTextFormat(this.var_1092);
         this.var_571.text = param1.getLineText(0);
         var _loc2_:int = this.var_571.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_571.getCharIndexAtPoint(param1.width - this.var_3022,this.var_571.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_3023;
         }
      }
   }
}
