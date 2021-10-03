package com.sulake.habbo.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ConfirmDialog extends AlertDialog implements IConfirmDialog
   {
       
      
      public function ConfirmDialog(param1:IHabboWindowManager, param2:XML, param3:String, param4:String, param5:uint, param6:Function)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function dialogEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case const_538:
                  if(var_300 != null)
                  {
                     _loc3_ = WindowEvent.allocate(WindowEvent.const_193,null,null);
                     var_300(this,_loc3_);
                     _loc3_.recycle();
                  }
                  break;
               case const_1015:
               case const_1386:
                  if(var_300 != null)
                  {
                     _loc3_ = WindowEvent.allocate(WindowEvent.const_551,null,null);
                     var_300(this,_loc3_);
                     _loc3_.recycle();
                  }
            }
         }
      }
   }
}
