package com.sulake.core.window.graphics.renderer
{
   import com.sulake.core.window.utils.IChildEntity;
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements IChildEntity
   {
      
      public static const const_566:uint = 0;
      
      public static const const_328:uint = 1;
      
      public static const const_561:uint = 2;
      
      public static const const_372:uint = 4;
      
      public static const const_526:uint = 8;
       
      
      private var _id:uint;
      
      private var _name:String;
      
      public var color:uint;
      
      public var blend:uint;
      
      public var var_340:uint;
      
      public var var_341:uint;
      
      public var region:Rectangle;
      
      public var colorize:Boolean;
      
      public function SkinLayoutEntity(param1:uint, param2:String)
      {
         super();
         this._id = param1;
         this._name = param2;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get tags() : Array
      {
         return null;
      }
      
      public function dispose() : void
      {
         this.region = null;
      }
   }
}
