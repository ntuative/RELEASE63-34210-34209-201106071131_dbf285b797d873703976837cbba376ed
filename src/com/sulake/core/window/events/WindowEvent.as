package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1832:String = "WE_DESTROY";
      
      public static const const_331:String = "WE_DESTROYED";
      
      public static const const_1770:String = "WE_OPEN";
      
      public static const const_1891:String = "WE_OPENED";
      
      public static const const_1936:String = "WE_CLOSE";
      
      public static const const_1742:String = "WE_CLOSED";
      
      public static const const_1897:String = "WE_FOCUS";
      
      public static const const_364:String = "WE_FOCUSED";
      
      public static const const_1894:String = "WE_UNFOCUS";
      
      public static const const_1898:String = "WE_UNFOCUSED";
      
      public static const const_1779:String = "WE_ACTIVATE";
      
      public static const const_641:String = "WE_ACTIVATED";
      
      public static const const_1760:String = "WE_DEACTIVATE";
      
      public static const const_549:String = "WE_DEACTIVATED";
      
      public static const const_348:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_497:String = "WE_UNSELECT";
      
      public static const const_653:String = "WE_UNSELECTED";
      
      public static const const_1911:String = "WE_LOCK";
      
      public static const const_1879:String = "WE_LOCKED";
      
      public static const const_1862:String = "WE_UNLOCK";
      
      public static const const_1868:String = "WE_UNLOCKED";
      
      public static const const_801:String = "WE_ENABLE";
      
      public static const const_269:String = "WE_ENABLED";
      
      public static const const_767:String = "WE_DISABLE";
      
      public static const const_255:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_436:String = "WE_RELOCATED";
      
      public static const const_1370:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1763:String = "WE_MINIMIZE";
      
      public static const const_1932:String = "WE_MINIMIZED";
      
      public static const const_1692:String = "WE_MAXIMIZE";
      
      public static const const_1753:String = "WE_MAXIMIZED";
      
      public static const const_1881:String = "WE_RESTORE";
      
      public static const const_1845:String = "WE_RESTORED";
      
      public static const const_633:String = "WE_CHILD_ADDED";
      
      public static const const_428:String = "WE_CHILD_REMOVED";
      
      public static const const_210:String = "WE_CHILD_RELOCATED";
      
      public static const const_189:String = "WE_CHILD_RESIZED";
      
      public static const const_320:String = "WE_CHILD_ACTIVATED";
      
      public static const const_553:String = "WE_PARENT_ADDED";
      
      public static const const_1771:String = "WE_PARENT_REMOVED";
      
      public static const const_1946:String = "WE_PARENT_RELOCATED";
      
      public static const const_962:String = "WE_PARENT_RESIZED";
      
      public static const const_1257:String = "WE_PARENT_ACTIVATED";
      
      public static const const_193:String = "WE_OK";
      
      public static const const_551:String = "WE_CANCEL";
      
      public static const const_117:String = "WE_CHANGE";
      
      public static const const_524:String = "WE_SCROLL";
      
      public static const const_111:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_723:IWindow;
      
      protected var var_1121:Boolean;
      
      protected var var_494:Boolean;
      
      protected var var_495:Boolean;
      
      protected var var_724:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_723 = param3;
         _loc5_.var_494 = param4;
         _loc5_.var_495 = false;
         _loc5_.var_724 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_723;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_494;
      }
      
      public function recycle() : void
      {
         if(this.var_495)
         {
            throw new Error("Event already recycled!");
         }
         this.var_723 = null;
         this._window = null;
         this.var_495 = true;
         this.var_1121 = false;
         this.var_724.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1121;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1121 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1121;
      }
      
      public function stopPropagation() : void
      {
         this.var_1121 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1121 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_494 + " window: " + this._window + " }";
      }
   }
}
