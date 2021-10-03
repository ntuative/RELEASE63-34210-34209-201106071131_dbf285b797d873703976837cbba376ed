package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_32;
      
      private static var var_148:Stage;
      
      private static var var_323:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_821:Boolean = true;
      
      private static var var_131:DisplayObject;
      
      private static var var_1533:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_148 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_131)
            {
               var_148.removeChild(var_131);
               var_148.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_148.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_148.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_148.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_821 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_323;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_323 = param1;
         if(var_323)
         {
            if(var_131)
            {
               var_131.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_131)
         {
            var_131.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_821)
         {
            _loc1_ = var_1533[_type];
            if(_loc1_)
            {
               if(var_131)
               {
                  var_148.removeChild(var_131);
               }
               else
               {
                  var_148.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_148.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_148.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_148.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_131 = _loc1_;
               var_148.addChild(var_131);
            }
            else
            {
               if(var_131)
               {
                  var_148.removeChild(var_131);
                  var_148.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_148.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_148.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_148.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_131 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_32:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_315:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_849:
                  case MouseCursorType.const_257:
                  case MouseCursorType.const_1812:
                  case MouseCursorType.const_1880:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_821 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1533[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_131)
         {
            var_131.x = param1.stageX - 2;
            var_131.y = param1.stageY;
            if(_type == MouseCursorType.const_32)
            {
               var_323 = false;
               Mouse.show();
            }
            else
            {
               var_323 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_131 && _type != MouseCursorType.const_32)
         {
            Mouse.hide();
            var_323 = false;
         }
      }
   }
}
