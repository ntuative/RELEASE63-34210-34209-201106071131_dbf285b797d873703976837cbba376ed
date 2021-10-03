package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1406:IHabboTracking;
      
      private var var_1921:Boolean = false;
      
      private var var_2918:int = 0;
      
      private var var_2132:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1406 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1406 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1921 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2918 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1921)
         {
            return;
         }
         ++this.var_2132;
         if(this.var_2132 <= this.var_2918)
         {
            this.var_1406.trackGoogle("toolbar",param1);
         }
      }
   }
}
