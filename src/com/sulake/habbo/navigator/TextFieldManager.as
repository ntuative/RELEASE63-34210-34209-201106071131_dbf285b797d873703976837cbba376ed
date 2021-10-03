package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_83:ITextFieldWindow;
      
      private var var_687:Boolean;
      
      private var var_1642:String = "";
      
      private var var_2043:int;
      
      private var var_2042:Function;
      
      private var var_2806:String = "";
      
      private var var_151:IWindowContainer;
      
      private var var_2807:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2808:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_83 = param2;
         this.var_2043 = param3;
         this.var_2042 = param4;
         if(param5 != null)
         {
            this.var_687 = true;
            this.var_1642 = param5;
            this.var_83.text = param5;
         }
         Util.setProcDirectly(this.var_83,this.onInputClick);
         this.var_83.addEventListener(WindowKeyboardEvent.const_224,this.checkEnterPress);
         this.var_83.addEventListener(WindowEvent.const_117,this.checkMaxLen);
         this.var_2807 = this.var_83.textBackground;
         this._orgTextBackgroundColor = this.var_83.textBackgroundColor;
         this.var_2808 = this.var_83.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_83.textBackground = this.var_2807;
         this.var_83.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_83.textColor = this.var_2808;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_83.textBackground = true;
         this.var_83.textBackgroundColor = 4294021019;
         this.var_83.textColor = 4278190080;
         if(this.var_151 == null)
         {
            this.var_151 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_151,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_83.parent).addChild(this.var_151);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_151.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_151.findChildByName("border").width = _loc2_.width + 15;
         this.var_151.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_83.getLocalPosition(_loc3_);
         this.var_151.x = _loc3_.x;
         this.var_151.y = _loc3_.y - this.var_151.height + 3;
         var _loc4_:IWindow = this.var_151.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_151.width / 2 - _loc4_.width / 2;
         this.var_151.x += (this.var_83.width - this.var_151.width) / 2;
         this.var_151.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1642 != null)
         {
            this.var_83.text = this.var_1642;
            this.var_687 = true;
         }
         else
         {
            this.var_83.text = "";
            this.var_687 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_687)
         {
            return this.var_2806;
         }
         return this.var_83.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_687 = false;
         this.var_83.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_151 != null)
         {
            this.var_151.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_83;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_687 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_364)
         {
            return;
         }
         if(!this.var_687)
         {
            return;
         }
         this.var_83.text = this.var_2806;
         this.var_687 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_2042 != null)
            {
               this.var_2042();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_83.text;
         if(_loc2_.length > this.var_2043)
         {
            this.var_83.text = _loc2_.substring(0,this.var_2043);
         }
      }
   }
}
