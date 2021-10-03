package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3044:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_92 = param1.desktop;
         var_71 = param1.var_1376 as WindowController;
         var_183 = param1.var_1378 as WindowController;
         var_173 = param1.renderer;
         var_902 = param1.var_1379;
         param2.begin();
         param2.end();
         param1.desktop = var_92;
         param1.var_1376 = var_71;
         param1.var_1378 = var_183;
         param1.renderer = var_173;
         param1.var_1379 = var_902;
      }
   }
}
