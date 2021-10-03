package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_168:String = "hex";
      
      public static const const_43:String = "int";
      
      public static const const_293:String = "uint";
      
      public static const const_138:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_52:String = "String";
      
      public static const const_250:String = "Point";
      
      public static const const_304:String = "Rectangle";
      
      public static const const_146:String = "Array";
      
      public static const const_259:String = "Map";
       
      
      private var var_711:String;
      
      private var var_203:Object;
      
      private var _type:String;
      
      private var var_2926:Boolean;
      
      private var var_3024:Boolean;
      
      private var var_2927:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_711 = param1;
         this.var_203 = param2;
         this._type = param3;
         this.var_2926 = param4;
         this.var_3024 = param3 == const_259 || param3 == const_146 || param3 == const_250 || param3 == const_304;
         this.var_2927 = param5;
      }
      
      public function get key() : String
      {
         return this.var_711;
      }
      
      public function get value() : Object
      {
         return this.var_203;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2926;
      }
      
      public function get range() : Array
      {
         return this.var_2927;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_168:
               return "0x" + uint(this.var_203).toString(16);
            case const_38:
               return Boolean(this.var_203) == true ? "true" : "false";
            case const_250:
               return "Point(" + Point(this.var_203).x + ", " + Point(this.var_203).y + ")";
            case const_304:
               return "Rectangle(" + Rectangle(this.var_203).x + ", " + Rectangle(this.var_203).y + ", " + Rectangle(this.var_203).width + ", " + Rectangle(this.var_203).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_259:
               _loc3_ = this.var_203 as Map;
               _loc1_ = "<var key=\"" + this.var_711 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_146:
               _loc4_ = this.var_203 as Array;
               _loc1_ = "<var key=\"" + this.var_711 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_250:
               _loc5_ = this.var_203 as Point;
               _loc1_ = "<var key=\"" + this.var_711 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_304:
               _loc6_ = this.var_203 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_711 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_43 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_168:
               _loc1_ = "<var key=\"" + this.var_711 + "\" value=\"" + "0x" + uint(this.var_203).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_711 + "\" value=\"" + this.var_203 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
