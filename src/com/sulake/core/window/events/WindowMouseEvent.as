package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowMouseEvent extends WindowEvent
   {
      
      public static const WINDOW_EVENT_MOUSE_CLICK:String = "WME_CLICK";
      
      public static const const_148:String = "WME_DOUBLE_CLICK";
      
      public static const const_45:String = "WME_DOWN";
      
      public static const const_2177:String = "WME_MIDDLE_CLICK";
      
      public static const const_2141:String = "WME_MIDDLE_DOWN";
      
      public static const const_2248:String = "WME_MIDDLE_UP";
      
      public static const const_178:String = "WME_MOVE";
      
      public static const const_25:String = "WME_OUT";
      
      public static const WINDOW_EVENT_MOUSE_OVER:String = "WME_OVER";
      
      public static const const_57:String = "WME_UP";
      
      public static const const_274:String = "WME_UP_OUTSIDE";
      
      public static const const_353:String = "WME_WHEEL";
      
      public static const const_2085:String = "WME_RIGHT_CLICK";
      
      public static const const_2088:String = "WME_RIGHT_DOWN";
      
      public static const const_2201:String = "WME_RIGHT_UP";
      
      public static const const_1684:String = "WME_ROLL_OUT";
      
      public static const const_1792:String = "WME_ROLL_OVER";
      
      public static const const_2128:String = "WME_HOVERING";
      
      private static const POOL:Array = [];
       
      
      public var delta:int;
      
      public var localX:Number;
      
      public var localY:Number;
      
      public var stageX:Number;
      
      public var stageY:Number;
      
      public var altKey:Boolean;
      
      public var ctrlKey:Boolean;
      
      public var shiftKey:Boolean;
      
      public var buttonDown:Boolean;
      
      public function WindowMouseEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:int) : WindowMouseEvent
      {
         var _loc13_:WindowMouseEvent = POOL.length > 0 ? POOL.pop() : new WindowMouseEvent();
         _loc13_._type = param1;
         _loc13_._window = param2;
         _loc13_.var_723 = param3;
         _loc13_.var_495 = false;
         _loc13_.var_724 = POOL;
         _loc13_.localX = param4;
         _loc13_.localY = param5;
         _loc13_.stageX = param6;
         _loc13_.stageY = param7;
         _loc13_.altKey = param8;
         _loc13_.ctrlKey = param9;
         _loc13_.shiftKey = param10;
         _loc13_.buttonDown = param11;
         _loc13_.delta = param12;
         return _loc13_;
      }
      
      override public function clone() : WindowEvent
      {
         return allocate(_type,window,related,this.localX,this.localY,this.stageX,this.stageY,this.altKey,this.ctrlKey,this.shiftKey,this.buttonDown,this.delta);
      }
      
      override public function toString() : String
      {
         return "WindowMouseEvent { type: " + _type + " cancelable: " + var_494 + " window: " + _window + " localX: " + this.localX + " localY: " + this.localY + " }";
      }
   }
}
