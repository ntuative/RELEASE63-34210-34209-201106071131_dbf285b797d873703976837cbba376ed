package com.sulake.core.window.components
{
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IMargins;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.core.window.utils.TextFieldCache;
   import com.sulake.core.window.utils.TextMargins;
   import com.sulake.core.window.utils.TextStyle;
   import com.sulake.core.window.utils.TextStyleManager;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class TextLabelController extends WindowController implements ILabelWindow, ILocalizable
   {
       
      
      private var var_375:Object = null;
      
      private var var_454:String = "regular";
      
      private var _text:String = "";
      
      private var var_140:Boolean = false;
      
      private var var_44:TextMargins;
      
      private var var_2627:Number = 0;
      
      private var var_2628:Number = 0;
      
      private var var_1522:Boolean = false;
      
      public function TextLabelController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         TextStyleManager.events.addEventListener(Event.CHANGE,this.onTextStyleChanged);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get antiAliasType() : String
      {
         return this.textField.antiAliasType;
      }
      
      public function get autoSize() : String
      {
         return this.textField.autoSize;
      }
      
      public function get bold() : Boolean
      {
         return this.textField.defaultTextFormat.bold;
      }
      
      public function get border() : Boolean
      {
         return this.textField.border;
      }
      
      public function get borderColor() : uint
      {
         return this.textField.borderColor;
      }
      
      public function get defaultTextFormat() : TextFormat
      {
         return this.textField.defaultTextFormat;
      }
      
      public function get embedFonts() : Boolean
      {
         return this.textField.embedFonts;
      }
      
      public function get fontFace() : String
      {
         return this.textField.defaultTextFormat.font;
      }
      
      public function get fontSize() : uint
      {
         return this.textField.defaultTextFormat.size == null ? 12 : uint(uint(this.textField.defaultTextFormat.size));
      }
      
      public function get gridFitType() : String
      {
         return this.textField.gridFitType;
      }
      
      public function get italic() : Boolean
      {
         return this.textField.defaultTextFormat.italic;
      }
      
      public function get kerning() : Boolean
      {
         return this.textField.defaultTextFormat.kerning;
      }
      
      public function get length() : int
      {
         return this._text.length;
      }
      
      public function get margins() : IMargins
      {
         if(!this.var_44)
         {
            this.var_44 = new TextMargins(0,0,0,0,this.setTextMargins);
         }
         return this.var_44;
      }
      
      public function get maxChars() : int
      {
         return this.textField.maxChars;
      }
      
      public function get sharpness() : Number
      {
         return this.textField.sharpness;
      }
      
      public function get spacing() : Number
      {
         return Number(this.textField.defaultTextFormat.letterSpacing);
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get textColor() : uint
      {
         return uint(this.var_375);
      }
      
      public function get textBackground() : Boolean
      {
         return background;
      }
      
      public function get textBackgroundColor() : uint
      {
         return color;
      }
      
      public function get textHeight() : Number
      {
         return this.var_2627;
      }
      
      public function get textWidth() : Number
      {
         return this.var_2628;
      }
      
      public function get textStyle() : TextStyle
      {
         return TextStyleManager.getStyle(this.var_454);
      }
      
      public function get thickness() : Number
      {
         return this.textField.thickness;
      }
      
      public function get underline() : Boolean
      {
         return this.textField.defaultTextFormat.underline;
      }
      
      public function get drawOffsetX() : int
      {
         return !!this.var_44 ? int(this.var_44.left) : 0;
      }
      
      public function get drawOffsetY() : int
      {
         return !!this.var_44 ? int(this.var_44.top) : 0;
      }
      
      public function get hasTextColor() : Boolean
      {
         return this.var_375 != null;
      }
      
      protected function get textField() : TextField
      {
         var _loc1_:TextField = TextFieldCache.getTextFieldByStyleName(this.var_454);
         if(_loc1_)
         {
            _loc1_.text = this._text;
            if(this.var_375 != null)
            {
               _loc1_.textColor = uint(this.var_375);
            }
         }
         return _loc1_;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_140)
         {
            context.removeLocalizationListener(var_18.slice(2,var_18.indexOf("}")),this);
            this.var_140 = false;
         }
         var_18 = param1;
         if(var_18.charAt(0) == "$" && var_18.charAt(1) == "{")
         {
            context.registerLocalizationListener(var_18.slice(2,var_18.indexOf("}")),this);
            this.var_140 = true;
         }
         else
         {
            this._text = param1;
            this.refresh();
         }
      }
      
      override public function set caption(param1:String) : void
      {
         this.text = param1;
      }
      
      public function set localization(param1:String) : void
      {
         if(param1 != null)
         {
            this._text = param1;
            this.refresh();
         }
      }
      
      public function set textStyle(param1:TextStyle) : void
      {
         if(this.var_454 != param1.name)
         {
            this.var_454 = param1.name;
            this.refresh();
         }
      }
      
      public function set textColor(param1:uint) : void
      {
         if(param1 != this.var_375)
         {
            this.var_375 = param1;
            this.refresh();
         }
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            TextStyleManager.events.removeEventListener(Event.CHANGE,this.onTextStyleChanged);
            if(this.var_140)
            {
               this.var_140 = false;
               context.removeLocalizationListener(var_18.slice(2,var_18.indexOf("}")),this);
            }
            if(this.var_44)
            {
               this.var_44.dispose();
               this.var_44 = null;
            }
            super.dispose();
         }
      }
      
      private function refresh(param1:Boolean = false) : void
      {
         var _loc9_:* = null;
         if(this.var_1522)
         {
            return;
         }
         this.var_1522 = true;
         var _loc2_:TextField = this.textField;
         if(!_loc2_)
         {
            this.var_1522 = false;
            return;
         }
         this.var_2628 = _loc2_.textWidth;
         this.var_2627 = _loc2_.textHeight;
         var _loc3_:int = !!this.var_44 ? int(this.var_44.left + this.var_44.right) : 0;
         var _loc4_:int = !!this.var_44 ? int(this.var_44.top + this.var_44.bottom) : 0;
         var _loc5_:int = 0 - _loc3_;
         var _loc6_:int = 0 - _loc4_;
         var _loc7_:int = Math.floor(_loc2_.width) + (!!_loc2_.border ? 1 : 0);
         var _loc8_:Boolean = false;
         if(_loc7_ != _loc5_)
         {
            setRectangle(var_11.x,var_11.y,_loc7_ + _loc3_,Math.floor(_loc2_.height) + _loc4_);
            _loc8_ = true;
         }
         if(_loc2_.height + (!!_loc2_.border ? 1 : 0) < _loc6_)
         {
            _loc2_.height = _loc6_ - (!!_loc2_.border ? 1 : 0);
         }
         else if(_loc2_.height + (!!_loc2_.border ? 1 : 0) > _loc6_)
         {
            setRectangle(var_11.x,var_11.y,_loc7_ + _loc3_,Math.floor(_loc2_.height) + _loc4_);
            _loc8_ = true;
         }
         this.var_1522 = false;
         _context.invalidate(this,var_11,WindowRedrawFlag.const_62);
         if(!_loc8_ && !param1)
         {
            _loc9_ = WindowEvent.allocate(WindowEvent.const_41,this,null);
            _events.dispatchEvent(_loc9_);
            _loc9_.recycle();
         }
      }
      
      private function setTextMargins(param1:IMargins) : void
      {
         if(param1 && param1 != this.var_44)
         {
            if(this.var_44)
            {
               this.var_44.assign(param1.left,param1.top,param1.right,param1.bottom,this.setTextMargins);
            }
            else
            {
               this.var_44 = new TextMargins(param1.left,param1.top,param1.right,param1.bottom,this.setTextMargins);
            }
         }
         this.refresh();
      }
      
      private function onTextStyleChanged(param1:Event) : void
      {
         this.refresh();
      }
      
      private function setTextMarginMap(param1:Map) : void
      {
         if(this.var_44)
         {
            this.var_44.assign(int(param1["left"]),int(param1["top"]),int(param1["right"]),int(param1["bottom"]),this.setTextMargins);
         }
         else
         {
            this.var_44 = new TextMargins(int(param1["left"]),int(param1["top"]),int(param1["right"]),int(param1["bottom"]),this.setTextMargins);
         }
         this.refresh();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         var _loc2_:TextStyle = TextStyleManager.getStyle(this.var_454);
         _loc1_.push(this.var_454 != TextStyleManager.const_219 ? new PropertyStruct(PropertyDefaults.const_407,this.var_454,PropertyStruct.const_52,true,PropertyDefaults.const_862) : PropertyDefaults.const_1233);
         _loc1_.push((_loc2_.color != null ? this.var_375 != _loc2_.color : this.var_375 != null && this.var_375 != PropertyDefaults.const_900) ? new PropertyStruct(PropertyDefaults.const_421,this.var_375,PropertyStruct.const_168,true) : PropertyDefaults.const_1157);
         if(this.var_44)
         {
            if(this.var_44.left != PropertyDefaults.const_959)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_300,this.var_44.left,PropertyStruct.const_43,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_779);
            }
            if(this.var_44.top != PropertyDefaults.const_743)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_277,this.var_44.top,PropertyStruct.const_43,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_1009);
            }
            if(this.var_44.right != PropertyDefaults.const_973)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_303,this.var_44.right,PropertyStruct.const_43,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_718);
            }
            if(this.var_44.bottom != PropertyDefaults.const_760)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_288,this.var_44.bottom,PropertyStruct.const_43,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_854);
            }
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_779);
            _loc1_.push(PropertyDefaults.const_1009);
            _loc1_.push(PropertyDefaults.const_718);
            _loc1_.push(PropertyDefaults.const_854);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case PropertyDefaults.const_407:
                  this.textStyle = TextStyleManager.getStyle(_loc2_.value as String);
                  break;
               case PropertyDefaults.const_421:
                  this.var_375 = _loc2_.value as uint;
                  break;
               case PropertyDefaults.const_300:
                  if(this.var_44 || _loc2_.valid)
                  {
                     this.margins.left = _loc2_.value as int;
                  }
                  break;
               case PropertyDefaults.const_277:
                  if(this.var_44 || _loc2_.valid)
                  {
                     this.margins.top = _loc2_.value as int;
                  }
                  break;
               case PropertyDefaults.const_303:
                  if(this.var_44 || _loc2_.valid)
                  {
                     this.margins.right = _loc2_.value as int;
                  }
                  break;
               case PropertyDefaults.const_288:
                  if(this.var_44 || _loc2_.valid)
                  {
                     this.margins.bottom = _loc2_.value as int;
                  }
                  break;
               case "margins":
                  this.setTextMarginMap(_loc2_.value as Map);
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
