package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1781:IID;
      
      private var var_1115:Boolean;
      
      private var var_1173:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1781 = param1;
         this.var_1173 = new Array();
         this.var_1115 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1781;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1115;
      }
      
      public function get receivers() : Array
      {
         return this.var_1173;
      }
      
      public function dispose() : void
      {
         if(!this.var_1115)
         {
            this.var_1115 = true;
            this.var_1781 = null;
            while(this.var_1173.length > 0)
            {
               this.var_1173.pop();
            }
            this.var_1173 = null;
         }
      }
   }
}
