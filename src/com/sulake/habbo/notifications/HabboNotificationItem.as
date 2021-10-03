package com.sulake.habbo.notifications
{
   public class HabboNotificationItem
   {
       
      
      private var var_86:HabboNotificationItemStyle;
      
      private var var_188:String;
      
      private var var_23:HabboNotifications;
      
      public function HabboNotificationItem(param1:String, param2:HabboNotificationItemStyle, param3:HabboNotifications)
      {
         super();
         this.var_188 = param1;
         this.var_86 = param2;
         this.var_23 = param3;
      }
      
      public function get style() : HabboNotificationItemStyle
      {
         return this.var_86;
      }
      
      public function get content() : String
      {
         return this.var_188;
      }
      
      public function dispose() : void
      {
         this.var_188 = null;
         if(this.var_86 != null)
         {
            this.var_86.dispose();
            this.var_86 = null;
         }
         this.var_23 = null;
      }
      
      public function ExecuteUiLinks() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_86.componentLinks;
         for each(_loc2_ in _loc1_)
         {
            if(this.var_23 != null)
            {
               this.var_23.onExecuteLink(_loc2_);
            }
         }
      }
   }
}
